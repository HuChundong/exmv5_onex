.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$HtcConnSrvHistory;,
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$DualMode;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$Injector;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final CHECK_VERIZON_APN_ALLOW__HTC:I = 0x7

.field private static final CHECK_VERIZON_APN_ALLOW__HTC_SIGNATURE:I = 0x2

.field private static final CHECK_VERIZON_APN_ALLOW__SYSTEM_AND_META_DATA:I = 0x8

.field private static final CHECK_VERIZON_APN_ALLOW__SYSTEM_FLAG:I = 0x1

.field private static final CHECK_VERIZON_APN_ALLOW__VZW:I = 0xc

.field private static final CHECK_VERIZON_APN_ALLOW__VZW_SIGNATURE:I = 0x4

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_DETAIL:Z = false

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x6d

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x6c

.field private static final EVENT_HTC_OFFSET:I = 0x72

.field private static final EVENT_HTC_RECONNECT_REQUEST:I = 0x73

.field private static final EVENT_HTC_SET_USER_DATA_ENABLE_DUALGSM:I = 0x77

.field private static final EVENT_HTC_SYSTEM_READY:I = 0x75

.field private static final EVENT_HTC_TEARDOWN_REQUEST:I = 0x74

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_RESTORE_DNS:I = 0x6f

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0x70

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0x6e

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_MOBILE_PHONE_TYPE:I = 0x76

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0x71

.field private static final FAILOVER_FOR_CONNECTED:I = 0x1

.field private static final FAILOVER_FOR_CONNECTION_FAILURE:I = 0x2

.field private static final FAILOVER_FOR_DISCONNECT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HTC_CUSTOMIZED_FAIL_OVER:Z = false

.field private static final HTC_HISTORY_ENTRIES:I = 0x3cc

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE1:I = 0x19

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE10:I = 0x25

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE11:I = 0x26

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE2:I = 0x1a

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE3:I = 0x1b

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE4:I = 0x1c

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE5:I = 0x1d

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE6:I = 0x1e

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE7:I = 0x1f

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE8:I = 0x23

.field private static final HTC_HISTORY__EVENT_AIDL_ERROR_TYPE9:I = 0x24

.field private static final HTC_HISTORY__EVENT_BROADCAST_AVL_CHANGE:I = 0x10

.field private static final HTC_HISTORY__EVENT_DUAL_MODE_SWITCH:I = 0x11

.field private static final HTC_HISTORY__EVENT_HTC_INET_REPORT:I = 0x35

.field private static final HTC_HISTORY__EVENT_HTC_NET_STATE_UPDATE:I = 0x27

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL1:I = 0x2e

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL2:I = 0x2f

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL3:I = 0x30

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL4:I = 0x31

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL5:I = 0x32

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL6:I = 0x33

.field private static final HTC_HISTORY__EVENT_HTC_RECONNECT_FAIL7:I = 0x34

.field private static final HTC_HISTORY__EVENT_HTC_SET_USER_DATA_ENABLE_DUALGSM:I = 0x36

.field private static final HTC_HISTORY__EVENT_HTC_TETHER_PERMISSION:I = 0x2a

.field private static final HTC_HISTORY__EVENT_HTC_TETHER_REGISTER:I = 0x29

.field private static final HTC_HISTORY__EVENT_HTC_TETHER_REQUEST:I = 0x28

.field private static final HTC_HISTORY__EVENT_INET_CONDITION_CHANGE:I = 0x2b

.field private static final HTC_HISTORY__EVENT_INET_CONDITION_END:I = 0x2c

.field private static final HTC_HISTORY__EVENT_INTEREST_NET_INFO:I = 0x13

.field private static final HTC_HISTORY__EVENT_NET_STATE_CHANGE:I = 0x12

.field private static final HTC_HISTORY__EVENT_NET_SUBTYPE_CHANGE:I = 0x18

.field private static final HTC_HISTORY__EVENT_REQUEST_HOST_ROUTE:I = 0x9

.field private static final HTC_HISTORY__EVENT_REQ_TEARDOWN:I = 0x1

.field private static final HTC_HISTORY__EVENT_REQ_TETHER:I = 0xe

.field private static final HTC_HISTORY__EVENT_REQ_UNTETHER:I = 0xf

.field private static final HTC_HISTORY__EVENT_SET_DATA_DEPENDENCY:I = 0xb

.field private static final HTC_HISTORY__EVENT_SET_MOBILE_DATA:I = 0xc

.field private static final HTC_HISTORY__EVENT_SET_MOBILE_DATA_ACT:I = 0x22

.field private static final HTC_HISTORY__EVENT_SET_MOBILE_DATA_PHONE_TYPE:I = 0x14

.field private static final HTC_HISTORY__EVENT_SET_NET_PREF:I = 0x0

.field private static final HTC_HISTORY__EVENT_SET_NET_PREF_ACT:I = 0x20

.field private static final HTC_HISTORY__EVENT_SET_NET_RADIO:I = 0x3

.field private static final HTC_HISTORY__EVENT_SET_POLICY_DATA_ENABLE:I = 0xa

.field private static final HTC_HISTORY__EVENT_SET_POLICY_ENABLE:I = 0x15

.field private static final HTC_HISTORY__EVENT_SET_RADIO:I = 0x2

.field private static final HTC_HISTORY__EVENT_START_USING_NET:I = 0x4

.field private static final HTC_HISTORY__EVENT_START_USING_NET_CASE2:I = 0x5

.field private static final HTC_HISTORY__EVENT_START_USING_NET_CASE3:I = 0x6

.field private static final HTC_HISTORY__EVENT_START_USING_NET_CASE4:I = 0x7

.field private static final HTC_HISTORY__EVENT_STOP_USING_NET_CASE:I = 0x8

.field private static final HTC_HISTORY__EVENT_SYS_READY:I = 0xd

.field private static final HTC_HISTORY__EVENT_TOTAL:I = 0x36

.field private static final HTC_HISTORY__EVENT_UPDATE_SPRINT_ADMIN_PROPERTY:I = 0x2d

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

#the value of this static final field might be set in the static constructor
.field private static final LOGD_RULES:Z = false

.field private static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MAX_POLICY_SLOT:I = 0x5

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final REMOVE:Z = false

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_DETAIL:Ljava/lang/String; = null

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "ConnSrv_SigDebug"

.field private static final TO_DEFAULT_TABLE:Z = true

.field private static final TO_SECONDARY_TABLE:Z = false

.field private static final VDBG:Z = true

.field private static final isDSDAProject:Z

.field private static final mDualGSMPhoneEnable:Z

.field private static final mDualPhoneEnable:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private ACTIVE_NET_PROP:Ljava/lang/String;

.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityServicePid:I

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultDnsNet:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDefaultProxyLock:Ljava/lang/Object;

.field private mDnsLock:Ljava/lang/Object;

.field private mDnsOverridden:Z

.field mDualMode:Lcom/android/server/ConnectivityService$DualMode;

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private final mGlobalProxyLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/ConnectivityService$HtcConnSrvHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mLastState:[Landroid/net/NetworkInfo$State;

.field private mLogConnSrv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/ConnectivityService$HtcConnSrvHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobilePhoneSettings:I

.field private mMobileSettings:Z

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPolicy:[[Z

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field private mPrivateRouteAsDefault:Ljava/lang/Integer;

.field mProtectedNetworks:Ljava/util/List;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private final mReciever:Landroid/content/BroadcastReceiver;

.field private mReconnectIssued:[Ljava/lang/Boolean;

.field private mRulesLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mVpn:Lcom/android/server/connectivity/Vpn;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    .line 171
    sget-boolean v0, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v0, :cond_3

    const-string v0, "ConnSrv_Debug"

    :goto_0
    sput-object v0, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    .line 181
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/ConnectivityService;->LOGD_RULES:Z

    .line 246
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    .line 247
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    .line 248
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x13

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/ConnectivityService;->isDSDAProject:Z

    .line 7159
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z

    return-void

    .line 171
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 248
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 45
    .parameter "context"
    .parameter "netd"
    .parameter "statsService"
    .parameter "policyManager"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 469
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 200
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 202
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 204
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 231
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 234
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 235
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 236
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 238
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 240
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    .line 245
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    .line 263
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    .line 401
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 423
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 424
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    .line 425
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 428
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 429
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    .line 441
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    .line 443
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    .line 445
    const-string v3, "net.active_wan"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->ACTIVE_NET_PROP:Ljava/lang/String;

    .line 2736
    new-instance v3, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 7703
    new-instance v3, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mReciever:Landroid/content/BroadcastReceiver;

    .line 7825
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mLogConnSrv:Ljava/util/LinkedList;

    .line 470
    const-string v3, "ConnectivityService starting up"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/miui/server/FirewallService;->setupService(Landroid/content/Context;)V
    .line 472
    new-instance v20, Landroid/os/HandlerThread;

    const-string v3, "ConnectivityServiceThread"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 473
    .local v20, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->start()V

    .line 474
    new-instance v3, Lcom/android/server/ConnectivityService$MyHandler;

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 479
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    .line 482
    :try_start_0
    const-string v3, "net.hostname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 485
    .local v23, id:Ljava/lang/String;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 486
    new-instance v3, Ljava/lang/String;

    const-string v4, "android-"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 487
    .local v33, name:Ljava/lang/String;
    const-string v3, "net.hostname"

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v23           #id:Ljava/lang/String;
    .end local v33           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_dns_server"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 501
    .local v18, dns:Ljava/lang/String;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 502
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 506
    :cond_2
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    :goto_1
    const-string v3, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 512
    const-string v3, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 513
    const-string v3, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 515
    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v43

    .line 516
    .local v43, wifib:Landroid/os/IBinder;
    invoke-static/range {v43 .. v43}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v3, v4}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 526
    :goto_2
    const-string v3, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/PowerManager;

    .line 528
    .local v37, powerManager:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "ConnectivityService"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 532
    const/16 v3, 0x25

    new-array v3, v3, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 534
    const/16 v3, 0x25

    new-array v3, v3, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 538
    sget v3, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 539
    const/16 v3, 0x25

    new-array v3, v3, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 554
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    .line 555
    const/16 v3, 0x25

    new-array v3, v3, [Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    .line 556
    const/16 v3, 0x25

    new-array v3, v3, [Landroid/net/NetworkInfo$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;

    .line 557
    const/16 v3, 0x25

    const/4 v4, 0x6

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    .local v15, arr$:[[Z
    array-length v0, v15

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    aget-object v36, v15, v22

    .line 560
    .local v36, policy:[Z
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 559
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 492
    .end local v15           #arr$:[[Z
    .end local v18           #dns:Ljava/lang/String;
    .end local v22           #i$:I
    .end local v26           #len$:I
    .end local v36           #policy:[Z
    .end local v37           #powerManager:Landroid/os/PowerManager;
    .end local v43           #wifib:Landroid/os/IBinder;
    :catch_0
    move-exception v19

    .line 493
    .local v19, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set hostname failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v18       #dns:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 508
    .local v19, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting defaultDns using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    .end local v19           #e:Ljava/lang/IllegalArgumentException;
    .restart local v43       #wifib:Landroid/os/IBinder;
    :catch_2
    move-exception v19

    .line 523
    .local v19, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to register INetworkPolicyListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 563
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v15       #arr$:[[Z
    .restart local v22       #i$:I
    .restart local v26       #len$:I
    .restart local v37       #powerManager:Landroid/os/PowerManager;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->setActiveNetworkProp()V

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x408002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v41

    .line 567
    .local v41, raStrings:[Ljava/lang/String;
    if-nez v41, :cond_4

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v41

    .line 572
    :cond_4
    move-object/from16 v15, v41

    .local v15, arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    aget-object v40, v15, v22

    .line 573
    .local v40, raString:Ljava/lang/String;
    new-instance v39, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v39 .. v40}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 576
    .local v39, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    if-gez v3, :cond_6

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 572
    :cond_5
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 581
    :cond_6
    move-object/from16 v0, v39

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    sget v4, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    if-le v3, v4, :cond_7

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 585
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_8

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 590
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v39, v3, v4

    .line 592
    sget-boolean v3, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v3, :cond_5

    .line 593
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accepted radioAttributes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 607
    .end local v39           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v40           #raString:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x408002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 609
    .local v32, naStrings:[Ljava/lang/String;
    if-nez v32, :cond_a

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 614
    :cond_a
    move-object/from16 v15, v32

    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    aget-object v31, v15, v22

    .line 616
    .local v31, naString:Ljava/lang/String;
    :try_start_3
    new-instance v29, Landroid/net/NetworkConfig;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 619
    .local v29, n:Landroid/net/NetworkConfig;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    sget v4, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    if-le v3, v4, :cond_b

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to adopt radio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 614
    .end local v29           #n:Landroid/net/NetworkConfig;
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 624
    .restart local v29       #n:Landroid/net/NetworkConfig;
    :cond_b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    if-gez v3, :cond_c

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 690
    .end local v29           #n:Landroid/net/NetworkConfig;
    :catch_3
    move-exception v3

    goto :goto_7

    .line 630
    .restart local v29       #n:Landroid/net/NetworkConfig;
    :cond_c
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v4, 0x24

    if-le v3, v4, :cond_d

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 635
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_e

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 640
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v3, v3, v4

    if-nez v3, :cond_f

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in network type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 648
    :cond_f
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xda

    if-eq v3, v4, :cond_10

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_10

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_11

    .line 651
    :cond_10
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    packed-switch v3, :pswitch_data_0

    .line 659
    :cond_11
    :goto_8
    :pswitch_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xaf

    if-ne v3, v4, :cond_12

    .line 660
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    packed-switch v3, :pswitch_data_1

    .line 670
    :cond_12
    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_14

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_13

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xaf

    if-eq v3, v4, :cond_13

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_14

    .line 674
    :cond_13
    move-object/from16 v0, v29

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    packed-switch v3, :pswitch_data_2

    .line 681
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v29, v3, v4

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v29

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    aput-object v5, v3, v4

    .line 685
    sget-boolean v3, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v3, :cond_15

    .line 686
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accepted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    goto/16 :goto_7

    .line 655
    :pswitch_1
    const/4 v3, -0x1

    move-object/from16 v0, v29

    iput v3, v0, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_8

    .line 662
    :pswitch_2
    const/4 v3, -0x1

    move-object/from16 v0, v29

    iput v3, v0, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_9

    .line 676
    :pswitch_3
    const-string v3, "exclusive"

    move-object/from16 v0, v29

    iput-object v3, v0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    .line 695
    .end local v29           #n:Landroid/net/NetworkConfig;
    .end local v31           #naString:Ljava/lang/String;
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x408002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v38

    .line 705
    .local v38, protectedNetworks:[I
    if-nez v38, :cond_17

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v38

    .line 710
    :cond_17
    move-object/from16 v15, v38

    .local v15, arr$:[I
    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_19

    aget v35, v15, v22

    .line 711
    .local v35, p:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v35

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 714
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring protectedNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 719
    .end local v35           #p:I
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 721
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v24, v3, -0x1

    .line 722
    .local v24, insertionPoint:I
    const/16 v17, 0x0

    .line 723
    .local v17, currentLowest:I
    const/16 v34, 0x0

    .line 724
    .end local v15           #arr$:[I
    .local v34, nextLowest:I
    :goto_d
    const/4 v3, -0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_20

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v15, arr$:[Landroid/net/NetworkConfig;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    move/from16 v25, v24

    .end local v24           #insertionPoint:I
    .local v25, insertionPoint:I
    :goto_e
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_1f

    aget-object v30, v15, v22

    .line 726
    .local v30, na:Landroid/net/NetworkConfig;
    if-nez v30, :cond_1a

    move/from16 v24, v25

    .line 725
    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    :goto_f
    add-int/lit8 v22, v22, 0x1

    move/from16 v25, v24

    .end local v24           #insertionPoint:I
    .restart local v25       #insertionPoint:I
    goto :goto_e

    .line 727
    :cond_1a
    move-object/from16 v0, v30

    iget v3, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v17

    if-ge v3, v0, :cond_1b

    move/from16 v24, v25

    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    goto :goto_f

    .line 728
    .end local v24           #insertionPoint:I
    .restart local v25       #insertionPoint:I
    :cond_1b
    move-object/from16 v0, v30

    iget v3, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v17

    if-le v3, v0, :cond_1d

    .line 729
    move-object/from16 v0, v30

    iget v3, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v34

    if-lt v3, v0, :cond_1c

    if-nez v34, :cond_2b

    .line 730
    :cond_1c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v34, v0

    move/from16 v24, v25

    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    goto :goto_f

    .line 735
    .end local v24           #insertionPoint:I
    .restart local v25       #insertionPoint:I
    :cond_1d
    sget-boolean v3, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v3, :cond_1e

    .line 736
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : net "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v24, v25, -0x1

    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    move-object/from16 v0, v30

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    aput v4, v3, v25

    goto :goto_f

    .line 741
    .end local v24           #insertionPoint:I
    .end local v30           #na:Landroid/net/NetworkConfig;
    .restart local v25       #insertionPoint:I
    :cond_1f
    move/from16 v17, v34

    .line 742
    const/16 v34, 0x0

    move/from16 v24, v25

    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    goto/16 :goto_d

    .line 746
    .end local v15           #arr$:[Landroid/net/NetworkConfig;
    :cond_20
    const/16 v3, 0x25

    new-array v3, v3, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 747
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v15, arr$:[I
    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_10
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_21

    aget v21, v15, v22

    .line 748
    .local v21, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v21

    .line 747
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 751
    .end local v21           #i:I
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 753
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 757
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 759
    const-string v3, "cm.test.mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 768
    :goto_12
    new-instance v8, Landroid/net/HtcMobileDataStateReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v3}, Landroid/net/HtcMobileDataStateReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 777
    .local v8, mHtcMobileDataStateReceiver:Landroid/net/HtcMobileDataStateReceiver;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v15

    move/from16 v26, v0

    const/16 v22, 0x0

    :goto_13
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_27

    aget v6, v15, v22

    .line 778
    .local v6, netType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/net/NetworkConfig;->radio:I

    sparse-switch v3, :sswitch_data_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 777
    :cond_22
    :goto_14
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 759
    .end local v6           #netType:I
    .end local v8           #mHtcMobileDataStateReceiver:Landroid/net/HtcMobileDataStateReceiver;
    :cond_23
    const/4 v3, 0x0

    goto :goto_11

    .line 762
    :catch_4
    move-exception v19

    .line 763
    .local v19, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_12

    .line 780
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v6       #netType:I
    .restart local v8       #mHtcMobileDataStateReceiver:Landroid/net/HtcMobileDataStateReceiver;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v4, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v4, v3, v6

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 866
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    const/4 v4, 0x0

    aput-object v4, v3, v6

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_14

    .line 793
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v6

    iget-object v7, v4, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;Landroid/net/HtcMobileDataStateReceiver;)V

    aput-object v3, v9, v6

    .line 795
    sget-boolean v3, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v3, :cond_24

    .line 796
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting net "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Mobile - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_15

    .line 802
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v4, Landroid/net/DummyDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v4, v3, v6

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_15

    .line 807
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v4

    aput-object v4, v3, v6

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_15

    .line 821
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v6

    if-eqz v3, :cond_25

    .line 822
    const-string v3, "Starting Wimax Service."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 824
    new-instance v28, Lcom/htc/net/wimax/WimaxStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/WimaxStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 825
    .local v28, mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    new-instance v44, Lcom/htc/net/wimax/WimaxService;

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/WimaxService;-><init>(Landroid/content/Context;Lcom/htc/net/wimax/WimaxStateTracker;)V

    .line 826
    .local v44, wimaxService:Lcom/htc/net/wimax/WimaxService;
    const-string v3, "wimax"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v4, 0x6

    aput-object v28, v3, v4

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 830
    new-instance v3, Lcom/android/server/ConnectivityService$DualMode;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/ConnectivityService$DualMode;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    goto/16 :goto_15

    .line 833
    .end local v28           #mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    .end local v44           #wimaxService:Lcom/htc/net/wimax/WimaxService;
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to create a DataStateTracker for an unsupported net type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 838
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v4

    aput-object v4, v3, v6

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_15

    .line 843
    :sswitch_6
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v3, :cond_26

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "none"

    if-eq v3, v4, :cond_26

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.6"

    if-eq v3, v4, :cond_26

    const/16 v3, 0x12

    if-ne v6, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v6

    if-eqz v3, :cond_26

    .line 849
    const-string v3, "Starting Usbnet Service."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 850
    new-instance v27, Lcom/htc/net/usbnet/UsbnetStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/htc/net/usbnet/UsbnetStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 851
    .local v27, mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;
    new-instance v42, Lcom/android/server/UsbnetService;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/UsbnetService;-><init>(Landroid/content/Context;Lcom/htc/net/usbnet/UsbnetStateTracker;)V

    .line 852
    .local v42, usbnetService:Lcom/android/server/UsbnetService;
    const-string v3, "usbnet"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/16 v4, 0x12

    aput-object v27, v3, v4

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_15

    .line 857
    .end local v27           #mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;
    .end local v42           #usbnetService:Lcom/android/server/UsbnetService;
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to create a DataStateTracker for an unsupported net type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 880
    .end local v6           #netType:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    .line 882
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMobileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 886
    .local v16, b:Landroid/os/IBinder;
    invoke-static/range {v16 .. v16}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 892
    .local v11, nmService:Landroid/os/INetworkManagementService;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneTypeSettings()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    .line 893
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMobilePhoneSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerForBroadcasts()V

    .line 897
    new-instance v9, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v12, p3

    move-object/from16 v13, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_2a

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 903
    new-instance v3, Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/ConnectivityService$VpnCallback;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    invoke-direct {v3, v4, v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 906
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v11, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-interface {v11, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 919
    :goto_18
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/LinkedList;

    .line 923
    new-instance v3, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-direct {v3, v4, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connectivity_change_delay"

    const/16 v5, 0x3e8

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 931
    return-void

    .line 880
    .end local v11           #nmService:Landroid/os/INetworkManagementService;
    .end local v16           #b:Landroid/os/IBinder;
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 898
    .restart local v11       #nmService:Landroid/os/INetworkManagementService;
    .restart local v16       #b:Landroid/os/IBinder;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_17

    .line 908
    :catch_5
    move-exception v19

    .line 909
    .local v19, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering observer :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_18

    .end local v8           #mHtcMobileDataStateReceiver:Landroid/net/HtcMobileDataStateReceiver;
    .end local v11           #nmService:Landroid/os/INetworkManagementService;
    .end local v16           #b:Landroid/os/IBinder;
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v24           #insertionPoint:I
    .local v15, arr$:[Landroid/net/NetworkConfig;
    .restart local v25       #insertionPoint:I
    .restart local v30       #na:Landroid/net/NetworkConfig;
    :cond_2b
    move/from16 v24, v25

    .end local v25           #insertionPoint:I
    .restart local v24       #insertionPoint:I
    goto/16 :goto_f

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
    .end packed-switch

    .line 674
    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_3
    .end packed-switch

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_5
        0x12 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLastState:[Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    return v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;)[Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/ConnectivityService;->LOGD_RULES:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/IWifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileDataPhoneType(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyActiveNetworkUpdate()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getMobileDataType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/ConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 8
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    .line 2519
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 2521
    .local v7, dst:Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, interfaze:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 2524
    .end local v1           #interfaze:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #interfaze:Ljava/lang/String;
    goto :goto_0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "lp"
    .parameter "addr"

    .prologue
    const/4 v0, 0x1

    .line 2549
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private addToHtcConnSrvHistory(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "info"

    .prologue
    .line 7912
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 7913
    .local v0, mParams:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 7914
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLogConnSrv:Ljava/util/LinkedList;

    const/16 v2, 0x3cc

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(Ljava/util/LinkedList;II[Ljava/lang/Object;)V

    .line 7915
    return-void
.end method

.method private addToHtcConnSrvHistory(I[Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "args"

    .prologue
    .line 7909
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLogConnSrv:Ljava/util/LinkedList;

    const/16 v1, 0x3cc

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(Ljava/util/LinkedList;II[Ljava/lang/Object;)V

    .line 7910
    return-void
.end method

.method private addToHtcConnSrvHistory(Ljava/util/LinkedList;IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "size"
    .parameter "event"
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/ConnectivityService$HtcConnSrvHistory;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7904
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/server/ConnectivityService$HtcConnSrvHistory;>;"
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 7905
    .local v0, mParams:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p4, v0, v1

    .line 7906
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(Ljava/util/LinkedList;II[Ljava/lang/Object;)V

    .line 7907
    return-void
.end method

.method private addToHtcConnSrvHistory(Ljava/util/LinkedList;II[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter "size"
    .parameter "event"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/ConnectivityService$HtcConnSrvHistory;",
            ">;II[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7884
    .local p1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/server/ConnectivityService$HtcConnSrvHistory;>;"
    if-nez p1, :cond_0

    .line 7902
    :goto_0
    return-void

    .line 7889
    :cond_0
    new-instance v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    .line 7890
    .local v0, hist:Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->timeStamp:J

    .line 7891
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->pid:I

    .line 7892
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->uid:I

    .line 7893
    iput p3, v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->event:I

    .line 7894
    iput-object p4, v0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:[Ljava/lang/Object;

    .line 7895
    monitor-enter p1

    .line 7896
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7897
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 7898
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 7900
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bumpDns()V
    .locals 7

    .prologue
    .line 4780
    :try_start_0
    const-string v4, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4781
    .local v3, propVal:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4782
    .local v2, n:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 4784
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 4787
    :cond_0
    :goto_0
    :try_start_2
    const-string v4, "net.dnschange"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4796
    .end local v2           #n:I
    .end local v3           #propVal:Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4797
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4801
    const/high16 v4, 0x800

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4802
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4803
    return-void

    .line 4789
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4790
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bump dns failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4785
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #n:I
    .restart local v3       #propVal:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "uid"
    .parameter "pid"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 7413
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7414
    .local v1, mPm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 7416
    .local v7, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {v1, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 7427
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z

    move-result v5

    :goto_0
    return v5

    .line 7421
    :catch_0
    move-exception v6

    .line 7425
    .local v6, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private callingWithVerizonApnAllowed(Landroid/content/Context;III)Z
    .locals 10
    .parameter "context"
    .parameter "uid"
    .parameter "pid"
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7487
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xa8

    if-ne v5, v8, :cond_10

    .line 7488
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7489
    .local v1, mPm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x4cf

    invoke-direct {p0, v1, p2, p3, v5}, Lcom/android/server/ConnectivityService;->htcGetPackageInfo(Landroid/content/pm/PackageManager;III)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 7497
    .local v4, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 7498
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find AP "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 7576
    .end local v1           #mPm:Landroid/content/pm/PackageManager;
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v6

    .line 7502
    .restart local v1       #mPm:Landroid/content/pm/PackageManager;
    .restart local v4       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v5, 0x6

    new-array v3, v5, [Z

    .line 7503
    .local v3, metaDataCheckResult:[Z
    and-int/lit8 v5, p4, 0x8

    if-eqz v5, :cond_d

    .line 7504
    if-eqz v4, :cond_d

    .line 7505
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_c

    .line 7506
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7507
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_d

    .line 7508
    aput-boolean v6, v3, v7

    .line 7509
    const/4 v2, 0x0

    .line 7510
    .local v2, metaData:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 7511
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 7512
    if-eqz v2, :cond_7

    move v5, v6

    :goto_1
    aput-boolean v5, v3, v6

    .line 7514
    :cond_2
    if-nez v2, :cond_3

    .line 7515
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;[Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 7516
    const/4 v8, 0x2

    if-eqz v2, :cond_8

    move v5, v6

    :goto_2
    aput-boolean v5, v3, v8

    .line 7518
    :cond_3
    if-nez v2, :cond_4

    .line 7519
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;[Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 7520
    const/4 v8, 0x3

    if-eqz v2, :cond_9

    move v5, v6

    :goto_3
    aput-boolean v5, v3, v8

    .line 7522
    :cond_4
    if-nez v2, :cond_5

    .line 7523
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;[Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 7524
    const/4 v8, 0x4

    if-eqz v2, :cond_a

    move v5, v6

    :goto_4
    aput-boolean v5, v3, v8

    .line 7526
    :cond_5
    if-nez v2, :cond_6

    .line 7527
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;[Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v2

    .line 7528
    const/4 v8, 0x5

    if-eqz v2, :cond_b

    move v5, v6

    :goto_5
    aput-boolean v5, v3, v8

    .line 7530
    :cond_6
    if-eqz v2, :cond_d

    .line 7531
    const-string v5, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched meta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v5, v7

    .line 7512
    goto :goto_1

    :cond_8
    move v5, v7

    .line 7516
    goto :goto_2

    :cond_9
    move v5, v7

    .line 7520
    goto :goto_3

    :cond_a
    move v5, v7

    .line 7524
    goto :goto_4

    :cond_b
    move v5, v7

    .line 7528
    goto :goto_5

    .line 7542
    .end local v0           #flags:I
    .end local v2           #metaData:Ljava/lang/String;
    :cond_c
    const-string v5, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find AP info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7547
    :cond_d
    const/4 v0, 0x0

    .line 7548
    .restart local v0       #flags:I
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_e

    .line 7549
    if-eqz v4, :cond_e

    .line 7550
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_e

    .line 7551
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7552
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_0

    .line 7559
    :cond_e
    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_f

    .line 7560
    const-string v5, "com.verizon.permissions.vzwappapn"

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/ConnectivityService;->callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7564
    :cond_f
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_10

    .line 7565
    const-string v5, "com.android.phone"

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/ConnectivityService;->callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0           #flags:I
    .end local v1           #mPm:Landroid/content/pm/PackageManager;
    .end local v3           #metaDataCheckResult:[Z
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_10
    move v6, v7

    .line 7576
    goto/16 :goto_0
.end method

.method private checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z
    .locals 11
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    .line 7385
    if-eqz p4, :cond_0

    array-length v9, p4

    if-nez v9, :cond_1

    .line 7386
    :cond_0
    const/4 v9, 0x1

    .line 7406
    :goto_0
    return v9

    .line 7388
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 7389
    .local v2, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 7390
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 7391
    .local v8, sig:Landroid/content/pm/Signature;
    move-object v1, p4

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 7392
    .local v7, matchSig:Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 7396
    const/4 v9, 0x1

    goto :goto_0

    .line 7391
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7390
    .end local v7           #matchSig:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 7401
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #sig:Landroid/content/pm/Signature;
    :cond_4
    if-eqz p5, :cond_5

    .line 7403
    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7406
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 7404
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private checkNetworkInfoForAidl(Landroid/net/NetworkInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter "info"
    .parameter "errorLog"

    .prologue
    .line 7269
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7270
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", get incorrect value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7271
    const/4 v0, 0x0

    .line 7273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 6783
    .local p0, value:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 6784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6786
    :cond_0
    return-object p0
.end method

.method private checkVerizonApnMetaData(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;
    .locals 6
    .parameter "mPm"
    .parameter "pi"

    .prologue
    .line 7432
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_1

    .line 7433
    const/4 v2, 0x0

    .line 7434
    .local v2, metaData:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 7435
    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 7436
    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.verizon.VZWAPPAPN"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7437
    .local v3, metaDataObj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 7439
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7449
    .end local v2           #metaData:Ljava/lang/String;
    .end local v3           #metaDataObj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 7440
    .restart local v2       #metaData:Ljava/lang/String;
    .restart local v3       #metaDataObj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 7441
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, ""

    goto :goto_0

    .line 7449
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v2           #metaData:Ljava/lang/String;
    .end local v3           #metaDataObj:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkVerizonApnMetaData(Landroid/content/pm/PackageManager;[Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;
    .locals 7
    .parameter "mPm"
    .parameter "itemInfo"

    .prologue
    .line 7455
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_1

    .line 7456
    const/4 v3, 0x0

    .line 7457
    .local v3, metaData:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 7458
    move-object v0, p2

    .local v0, arr$:[Landroid/content/pm/PackageItemInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 7459
    .local v4, pi:Landroid/content/pm/PackageItemInfo;
    if-nez v3, :cond_0

    .line 7460
    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->checkVerizonApnMetaData(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;)Ljava/lang/String;

    move-result-object v3

    .line 7458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7467
    .end local v0           #arr$:[Landroid/content/pm/PackageItemInfo;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #metaData:Ljava/lang/String;
    .end local v4           #pi:Landroid/content/pm/PackageItemInfo;
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method private enforcePreference()V
    .locals 10

    .prologue
    .line 1196
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    .line 1242
    :cond_0
    return-void

    .line 1200
    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1201
    .local v3, ni:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_0

    .line 1207
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 1230
    .local v4, t:I
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1233
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v4

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1234
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_4

    .line 1236
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x74

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v9, v9, v4

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    return-void
.end method

.method private getConnectivityChangeDelay()I
    .locals 5

    .prologue
    .line 1119
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1130
    .local v0, cr:Landroid/content/ContentResolver;
    const/16 v1, 0xbb8

    .line 1133
    .local v1, defaultDelay:I
    :try_start_0
    const-string v3, "conn.connectivity_change_delay"

    const/16 v4, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1141
    :goto_0
    const-string v3, "connectivity_change_delay"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 1137
    :catch_0
    move-exception v2

    .line 1138
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get delay failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 4
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 1301
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1302
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1304
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1305
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1307
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    return-object v0
.end method

.method private getGroupPriority(I)I
    .locals 1
    .parameter "netType"

    .prologue
    .line 7043
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 7045
    :cond_0
    const/4 v0, -0x1

    .line 7047
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    goto :goto_0
.end method

.method private getLinkCapabilities(I)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "networkType"

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1503
    move v0, p1

    .line 1504
    .local v0, replacedNetworkType:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-eq v2, v3, :cond_0

    .line 1505
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v0

    .line 1507
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1508
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, v0

    .line 1509
    .local v1, t:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 1511
    .end local v1           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMobileDataEnabledSettings()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2824
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2826
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 2824
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMobileDataPhoneTypeSettings()I
    .locals 4

    .prologue
    .line 2922
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-eqz v1, :cond_0

    .line 2923
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ext_mobile_data_phone_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2934
    .local v0, phoneType:I
    :goto_0
    return v0

    .line 2926
    .end local v0           #phoneType:I
    :cond_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 2927
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ext_mobile_data_phone_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #phoneType:I
    goto :goto_0

    .line 2931
    .end local v0           #phoneType:I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .restart local v0       #phoneType:I
    goto :goto_0
.end method

.method private getMobileDataType(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3052
    packed-switch p1, :pswitch_data_0

    .line 3060
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3054
    :pswitch_1
    const/16 v0, 0x1c

    goto :goto_0

    .line 3056
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 3058
    :pswitch_3
    const/16 v0, 0x1a

    goto :goto_0

    .line 3052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 11
    .parameter "networkType"
    .parameter "uid"

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1364
    move v4, p1

    .line 1365
    .local v4, replacedNetworkType:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    iget v8, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-eq v7, v8, :cond_2

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v4

    .line 1373
    :cond_0
    :goto_0
    if-ne v4, p1, :cond_4

    .line 1376
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v7, p1

    .line 1377
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_1

    .line 1378
    invoke-direct {p0, v6, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .end local v4           #replacedNetworkType:I
    .end local v6           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    :goto_1
    move-object v1, v0

    .line 1417
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    :goto_2
    return-object v1

    .line 1369
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v4       #replacedNetworkType:I
    :cond_2
    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v7, :cond_0

    .line 1370
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v4

    goto :goto_0

    .line 1385
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1388
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, v4

    .line 1389
    .local v5, replacedTracker:Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v7, p1

    .line 1390
    .restart local v6       #tracker:Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v5, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1391
    .local v3, replacedInfo:Landroid/net/NetworkInfo;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1393
    .local v2, originalInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/net/NetworkInfo;->htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1404
    goto :goto_1

    .end local v2           #originalInfo:Landroid/net/NetworkInfo;
    .end local v3           #replacedInfo:Landroid/net/NetworkInfo;
    .end local v5           #replacedTracker:Landroid/net/NetworkStateTracker;
    .end local v6           #tracker:Landroid/net/NetworkStateTracker;
    :cond_5
    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v7, :cond_6

    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v7, :cond_1

    .line 1405
    :cond_6
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, v4

    .line 1407
    .restart local v5       #replacedTracker:Landroid/net/NetworkStateTracker;
    if-nez v5, :cond_7

    move-object v1, v0

    .line 1408
    .end local v0           #info:Landroid/net/NetworkInfo;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    goto :goto_2

    .line 1410
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_7
    invoke-direct {p0, v5, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1411
    .restart local v3       #replacedInfo:Landroid/net/NetworkInfo;
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .parameter "networkType"

    .prologue
    .line 1542
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1544
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1545
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1549
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;
    .locals 3
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 7330
    const/4 v1, 0x0

    .line 7332
    .local v1, psName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 7333
    .local v0, packages:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 7340
    const/4 v2, 0x0

    aget-object v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7352
    .end local v0           #packages:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 7347
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 1

    .prologue
    .line 1159
    sget v0, Landroid/net/ConnectivityManager;->DEFAULT_NETWORK_PREFERENCE:I

    return v0
.end method

.method private getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 7
    .parameter "originalInfo"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 7087
    move-object v1, p1

    .line 7089
    .local v1, replacedInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 7090
    const/4 v2, 0x0

    .line 7135
    :goto_0
    return-object v2

    .line 7093
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 7094
    .local v0, originalNetworkType:I
    const/16 v2, 0x1c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_3

    .line 7097
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/net/NetworkInfo;->htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7100
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 7101
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaced NetworkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object v2, v1

    .line 7135
    goto :goto_0

    .line 7104
    :cond_3
    const/16 v2, 0x1d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_5

    .line 7107
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    const-string v4, "mobile_mms"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/net/NetworkInfo;->htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7110
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 7111
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaced NetworkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7114
    :cond_5
    const/16 v2, 0x23

    if-eq v0, v2, :cond_6

    const/16 v2, 0x24

    if-eq v0, v2, :cond_6

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    .line 7117
    :cond_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const-string v3, "mobile_admin"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/net/NetworkInfo;->htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7120
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 7121
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaced NetworkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7124
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7126
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/net/NetworkInfo;->htcStateUpdate(IILjava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 7129
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 7130
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaced NetworkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 5
    .parameter "networkType"

    .prologue
    .line 4995
    const/4 v1, 0x0

    .line 4997
    .local v1, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    :try_start_0
    const-string v3, "android.telephony.apn-restore"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5002
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 5005
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 5021
    :cond_0
    :goto_1
    return v2

    .line 4998
    :catch_0
    move-exception v0

    .line 4999
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get restore delay failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5006
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 5010
    :cond_1
    const v2, 0xea60

    .line 5012
    .local v2, ret:I
    const/16 v3, 0x24

    if-gt p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    .line 5014
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    .line 5017
    :cond_2
    if-nez v2, :cond_0

    .line 5018
    const v2, 0xea60

    goto :goto_1
.end method

.method private getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;
    .locals 3
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 7358
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v0

    .line 7359
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7362
    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7364
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 7369
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7380
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 7375
    :catch_0
    move-exception v2

    .line 7380
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 6068
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6069
    const/4 p1, 0x0

    .line 6071
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6072
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 6083
    :goto_0
    return-void

    .line 6073
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 6082
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6075
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleApplyDefaultProxy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6077
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 6079
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_3

    .line 6080
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 6082
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;Z)V
    .locals 25
    .parameter "info"
    .parameter "needHtcLateUpdateNetworkState"

    .prologue
    .line 3999
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    .line 4002
    .local v19, type:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v8

    .line 4003
    .local v8, isFailover:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    aget-object v18, v20, v19

    .line 4071
    .local v18, thisNet:Landroid/net/NetworkStateTracker;
    const/4 v11, 0x0

    .line 4072
    .local v11, needNotifyActiveNetworkUpdate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 4073
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v5, arr$:[I
    array-length v9, v5

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_4

    aget v13, v5, v6

    .line 4074
    .local v13, netType:I
    move/from16 v0, v19

    if-eq v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    move/from16 v20, v0

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 4079
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    aget-object v15, v20, v13

    .line 4080
    .local v15, otherNet:Landroid/net/NetworkStateTracker;
    if-nez v15, :cond_3

    const/4 v14, 0x0

    .line 4081
    .local v14, ni:Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 4082
    :cond_1
    const-string v20, "ConnectivityService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exclusive requires "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " teardown"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 4073
    .end local v14           #ni:Landroid/net/NetworkInfo;
    .end local v15           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 4080
    .restart local v15       #otherNet:Landroid/net/NetworkStateTracker;
    :cond_3
    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    goto :goto_1

    .line 4089
    .end local v13           #netType:I
    .end local v15           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    move/from16 v20, v0

    if-gez v20, :cond_5

    .line 4090
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 4091
    const/4 v11, 0x1

    .line 4095
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 4097
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 4217
    .end local v5           #arr$:[I
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_5
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 4218
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 4229
    if-eqz p2, :cond_17

    .line 4230
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V

    .line 4231
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    :goto_3
    if-eqz v11, :cond_6

    .line 4237
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->notifyActiveNetworkUpdate()V

    .line 4239
    :cond_6
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0x94

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0xaf

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 4242
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDualMode:Lcom/android/server/ConnectivityService$DualMode;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/ConnectivityService$DualMode;->previousActiveDefaultNetwork:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService$DualMode;->access$1100(Lcom/android/server/ConnectivityService$DualMode;)I

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-object v20, v20, v21

    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 4262
    :cond_8
    :goto_4
    return-void

    .line 4101
    :cond_9
    const/16 v17, 0x0

    .line 4102
    .local v17, teardownNet:Landroid/net/NetworkStateTracker;
    const/16 v16, 0x0

    .line 4103
    .local v16, teardownAllLowerPriority:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 4107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v16

    .line 4141
    :cond_a
    :goto_5
    sget-boolean v20, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v20, :cond_b

    .line 4142
    sget-object v21, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "connected + "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "("

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v22, v0

    aget-object v22, v22, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ")"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", pref="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", act="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", tear="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v17, :cond_11

    const/16 v20, -0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", tearlow="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :cond_b
    if-eqz v17, :cond_13

    .line 4149
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 4152
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Not broadcasting CONNECT_ACTION to torn down network "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pref="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4155
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto/16 :goto_4

    .line 4109
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 4110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 4111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 4113
    move-object/from16 v17, v18

    goto/16 :goto_5

    .line 4116
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    aget-object v17, v20, v21

    .line 4119
    const/16 v16, 0x1

    goto/16 :goto_5

    .line 4124
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 4127
    move-object/from16 v17, v18

    goto/16 :goto_5

    .line 4131
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    aget-object v17, v20, v21

    .line 4132
    const/16 v16, 0x1

    goto/16 :goto_5

    .line 4138
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v16

    goto/16 :goto_5

    .line 4142
    :cond_11
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    goto/16 :goto_6

    .line 4160
    :cond_12
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Policy requires "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " teardown"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4163
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v20

    if-nez v20, :cond_13

    .line 4165
    const-string v20, "ConnectivityService"

    const-string v21, "Network declined teardown request"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    if-eqz p2, :cond_8

    .line 4168
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService;->htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4174
    :cond_13
    if-eqz v16, :cond_5

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    move-object/from16 v0, v20

    iget v12, v0, Landroid/net/NetworkConfig;->priority:I

    .line 4176
    .local v12, needPriority:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .restart local v5       #arr$:[I
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_7
    if-ge v6, v9, :cond_15

    aget v13, v5, v6

    .line 4177
    .restart local v13       #netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v10, v20, v13

    .line 4178
    .local v10, na:Landroid/net/NetworkConfig;
    if-eqz v10, :cond_14

    iget v0, v10, Landroid/net/NetworkConfig;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v12, :cond_14

    .line 4180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    aget-object v15, v20, v13

    .line 4182
    .restart local v15       #otherNet:Landroid/net/NetworkStateTracker;
    if-eqz v15, :cond_14

    .line 4183
    const-string v20, "ConnectivityService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Policy requires "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " teardown quickly"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 4188
    const-string v20, "ConnectivityService"

    const-string v21, "Network declined teardown quickly request"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    .end local v15           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4193
    .end local v10           #na:Landroid/net/NetworkConfig;
    .end local v13           #netType:I
    :cond_15
    monitor-enter p0

    .line 4197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 4198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4203
    :cond_16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4204
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 4205
    const/4 v11, 0x1

    .line 4209
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 4211
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    goto/16 :goto_2

    .line 4203
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 4234
    .end local v5           #arr$:[I
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v12           #needPriority:I
    .end local v16           #teardownAllLowerPriority:Z
    .end local v17           #teardownNet:Landroid/net/NetworkStateTracker;
    :cond_17
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_3

    .line 4251
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 4254
    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 4255
    .local v7, iface:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 4257
    :try_start_2
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v7, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 4258
    :catch_0
    move-exception v20

    goto/16 :goto_4
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3794
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-interface {v8, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3796
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 3797
    .local v5, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 3800
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v5, :cond_9

    .line 3801
    const-string v6, "."

    .line 3812
    .local v6, reasonText:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3815
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3818
    .local v2, intent:Landroid/content/Intent;
    sget-boolean v8, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v8, :cond_a

    .line 3819
    :cond_0
    const-string v8, "networkInfo"

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3827
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-nez v8, :cond_1

    .line 3828
    const-string v8, "noConnectivity"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3830
    :cond_1
    if-eqz v5, :cond_2

    .line 3831
    const-string v8, "reason"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3833
    :cond_2
    if-eqz v0, :cond_3

    .line 3834
    const-string v8, "extraInfo"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3837
    :cond_3
    sget-boolean v8, Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z

    if-eqz v8, :cond_b

    .line 3838
    const/4 v8, 0x2

    invoke-direct {p0, v8, p1, v2}, Lcom/android/server/ConnectivityService;->htcCustomizedFailOver(ILandroid/net/NetworkInfo;Landroid/content/Intent;)V

    .line 3857
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 3858
    .local v3, newNet:Landroid/net/NetworkStateTracker;
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3859
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->tryFailover(I)Landroid/net/NetworkStateTracker;

    move-result-object v3

    .line 3860
    if-eqz v3, :cond_c

    .line 3861
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 3863
    .local v7, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_5

    .line 3867
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3871
    :cond_5
    const-string v8, "otherNetwork"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3878
    .end local v7           #switchTo:Landroid/net/NetworkInfo;
    :cond_6
    :goto_3
    const-string v8, "inetCondition"

    iget v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3880
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3881
    .local v1, immediateIntent:Landroid/content/Intent;
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3882
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3883
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3896
    if-nez v3, :cond_d

    const/4 v4, 0x0

    .line 3897
    .local v4, ni:Landroid/net/NetworkInfo;
    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_8

    .line 3898
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 3901
    :cond_8
    return-void

    .line 3803
    .end local v1           #immediateIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newNet:Landroid/net/NetworkStateTracker;
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v6           #reasonText:Ljava/lang/String;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 3822
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_a
    const-string v8, "networkInfo"

    invoke-virtual {v2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 3841
    :cond_b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3842
    const-string v8, "isFailover"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3843
    invoke-virtual {p1, v10}, Landroid/net/NetworkInfo;->setFailover(Z)V

    goto/16 :goto_2

    .line 3873
    .restart local v3       #newNet:Landroid/net/NetworkStateTracker;
    :cond_c
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3874
    const-string v8, "noConnectivity"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 3896
    .restart local v1       #immediateIntent:Landroid/content/Intent;
    :cond_d
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    goto :goto_4
.end method

.method private handleConnectivityChange(Landroid/net/NetworkInfo;Z)V
    .locals 16
    .parameter "replacedInfo"
    .parameter "doReset"

    .prologue
    .line 4279
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 4281
    .local v9, netType:I
    if-eqz p2, :cond_4

    const/4 v12, 0x3

    .line 4293
    .local v12, resetMask:I
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V

    .line 4296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v2, v13, v9

    .line 4297
    .local v2, curLp:Landroid/net/LinkProperties;
    const/4 v10, 0x0

    .line 4299
    .local v10, newLp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, v9

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 4300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, v9

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 4307
    sget-boolean v13, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v13, :cond_0

    .line 4309
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " doReset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n   curLp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n   newLp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4315
    :cond_0
    if-eqz v2, :cond_6

    .line 4316
    invoke-virtual {v2, v10}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 4317
    invoke-virtual {v2, v10}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v1

    .line 4318
    .local v1, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    if-eqz v13, :cond_f

    .line 4319
    :cond_1
    iget-object v13, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 4320
    .local v7, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_3

    .line 4321
    or-int/lit8 v12, v12, 0x1

    .line 4323
    :cond_3
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet6Address;

    if-eqz v13, :cond_2

    .line 4324
    or-int/lit8 v12, v12, 0x2

    goto :goto_1

    .line 4281
    .end local v1           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v2           #curLp:Landroid/net/LinkProperties;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    .end local v10           #newLp:Landroid/net/LinkProperties;
    .end local v12           #resetMask:I
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 4328
    .restart local v1       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v2       #curLp:Landroid/net/LinkProperties;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #newLp:Landroid/net/LinkProperties;
    .restart local v12       #resetMask:I
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n   car="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4354
    .end local v1           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4356
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 4373
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v10, v13, v9

    .line 4381
    sget-boolean v13, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v13, :cond_8

    .line 4382
    sget-object v13, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Type of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v9

    iget-object v15, v15, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v13, v13, v9

    invoke-virtual {v13}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_9
    const/4 v6, 0x1

    .line 4385
    .local v6, isWan:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v6}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z

    move-result v11

    .line 4388
    .local v11, resetDns:Z
    if-nez v12, :cond_a

    if-eqz v11, :cond_c

    .line 4389
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, v9

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 4390
    .local v8, linkProperties:Landroid/net/LinkProperties;
    if-eqz v8, :cond_c

    .line 4391
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 4392
    .local v5, iface:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 4393
    if-eqz v12, :cond_b

    .line 4394
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resetConnections("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4395
    invoke-static {v5, v12}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4399
    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_b

    .line 4400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 4403
    :cond_b
    if-eqz v11, :cond_c

    .line 4404
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resetting DNS cache for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v13, v5}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4419
    .end local v5           #iface:Ljava/lang/String;
    .end local v8           #linkProperties:Landroid/net/LinkProperties;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v13, v13, v9

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v13

    const-string v14, "linkPropertiesChanged"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 4428
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v13}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 4430
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4438
    :cond_e
    :goto_6
    return-void

    .line 4334
    .end local v6           #isWan:Z
    .end local v11           #resetDns:Z
    .restart local v1       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4340
    .end local v1           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_10
    const/4 v12, 0x3

    .line 4342
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4365
    :cond_11
    sget-boolean v13, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v13, :cond_7

    .line 4367
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " doReset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " resetMask="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n  curLp="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n  newLp= null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4384
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 4407
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v6       #isWan:Z
    .restart local v8       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #resetDns:Z
    :catch_0
    move-exception v3

    .line 4409
    .local v3, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception resetting dns cache: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4433
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iface:Ljava/lang/String;
    .end local v8           #linkProperties:Landroid/net/LinkProperties;
    :catch_1
    move-exception v3

    .line 4434
    .local v3, e:Landroid/os/RemoteException;
    const-string v13, "ConnectivityService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[tether] error to getHotspotEnabled:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6086
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6088
    .local v3, proxy:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6089
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6090
    .local v0, data:[Ljava/lang/String;
    aget-object v4, v0, v8

    .line 6091
    .local v4, proxyHost:Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 6092
    .local v5, proxyPort:I
    array-length v6, v0

    if-le v6, v9, :cond_0

    .line 6094
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 6099
    :cond_0
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6100
    .local v2, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 6102
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #p:Landroid/net/ProxyProperties;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_1
    :goto_0
    return-void

    .line 6095
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v4       #proxyHost:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :catch_0
    move-exception v1

    .line 6096
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 23
    .parameter "info"

    .prologue
    .line 3196
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    .line 3198
    .local v19, prevNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 3213
    monitor-enter p0

    .line 3215
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v18, v21, v19

    .line 3216
    .local v18, pids:Ljava/util/List;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_0

    .line 3217
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 3221
    .local v17, pid:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 3216
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3224
    .end local v17           #pid:Ljava/lang/Integer;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3228
    .end local v5           #i:I
    .end local v18           #pids:Ljava/util/List;
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3230
    .local v8, intent:Landroid/content/Intent;
    sget-boolean v21, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v21, :cond_2

    sget-boolean v21, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v21, :cond_b

    .line 3231
    :cond_2
    const-string v21, "networkInfo"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3239
    :goto_1
    sget-boolean v21, Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z

    if-eqz v21, :cond_c

    .line 3240
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/ConnectivityService;->htcCustomizedFailOver(ILandroid/net/NetworkInfo;Landroid/content/Intent;)V

    .line 3247
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 3248
    const-string v21, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3250
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 3251
    const-string v21, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3273
    :cond_5
    const/4 v14, 0x0

    .line 3274
    .local v14, newNet:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 3276
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)Landroid/net/NetworkStateTracker;

    move-result-object v14

    .line 3277
    if-eqz v14, :cond_e

    .line 3278
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    .line 3280
    .local v20, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-nez v21, :cond_7

    .line 3284
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3285
    const-string v21, "noConnectivity"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3289
    :cond_7
    sget-boolean v21, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v21, :cond_8

    sget-boolean v21, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v21, :cond_d

    .line 3290
    :cond_8
    const-string v21, "otherNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3303
    .end local v20           #switchTo:Landroid/net/NetworkInfo;
    :cond_9
    :goto_3
    const-string v21, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3306
    const/4 v4, 0x1

    .line 3307
    .local v4, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v21, v21, v19

    invoke-interface/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 3308
    .local v11, linkProperties:Landroid/net/LinkProperties;
    if-eqz v11, :cond_10

    .line 3309
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    .line 3310
    .local v16, oldIface:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 3311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v10, :cond_10

    aget-object v13, v3, v6

    .line 3312
    .local v13, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_f

    .line 3311
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3224
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #doReset:Z
    .end local v6           #i$:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #len$:I
    .end local v11           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v14           #newNet:Landroid/net/NetworkStateTracker;
    .end local v16           #oldIface:Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 3234
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_b
    const-string v21, "networkInfo"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 3243
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 3244
    const-string v21, "isFailover"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3245
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    goto/16 :goto_2

    .line 3293
    .restart local v14       #newNet:Landroid/net/NetworkStateTracker;
    .restart local v20       #switchTo:Landroid/net/NetworkInfo;
    :cond_d
    const-string v21, "otherNetwork"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 3298
    .end local v20           #switchTo:Landroid/net/NetworkInfo;
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3299
    const-string v21, "noConnectivity"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 3313
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v4       #doReset:Z
    .restart local v6       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #linkProperties:Landroid/net/LinkProperties;
    .restart local v13       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v16       #oldIface:Ljava/lang/String;
    :cond_f
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 3314
    .local v12, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 3315
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 3316
    .local v9, l:Landroid/net/LinkProperties;
    if-eqz v9, :cond_a

    .line 3317
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 3318
    const/4 v4, 0x0

    .line 3334
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #i$:I
    .end local v9           #l:Landroid/net/LinkProperties;
    .end local v10           #len$:I
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v16           #oldIface:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(Landroid/net/NetworkInfo;Z)V

    .line 3337
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3338
    .local v7, immediateIntent:Landroid/content/Intent;
    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3339
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3355
    if-nez v14, :cond_13

    const/4 v15, 0x0

    .line 3356
    .local v15, ni:Landroid/net/NetworkInfo;
    :goto_5
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-nez v21, :cond_11

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    sget-object v22, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 3357
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 3360
    :cond_12
    return-void

    .line 3355
    .end local v15           #ni:Landroid/net/NetworkInfo;
    :cond_13
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    goto :goto_5
.end method

.method private declared-synchronized handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V
    .locals 18
    .parameter "replacedInfo"

    .prologue
    .line 4916
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 4919
    .local v12, replacedNetType:I
    :goto_0
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    .line 4920
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v15, v15

    add-int/lit8 v13, v15, -0x1

    .local v13, x:I
    :goto_1
    if-ltz v13, :cond_5

    .line 4921
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    aget v5, v15, v13

    .line 4922
    .local v5, netType:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v15, v5

    .line 4923
    .local v7, nt:Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_2

    .line 4924
    if-ne v12, v5, :cond_4

    move-object/from16 v8, p1

    .line 4925
    .local v8, ntNetworkInfo:Landroid/net/NetworkInfo;
    :goto_2
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    :cond_0
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_2

    .line 4927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v5

    iget v15, v15, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    if-gez v15, :cond_2

    .line 4929
    :cond_1
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    .line 4920
    .end local v8           #ntNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 4916
    .end local v5           #netType:I
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    .end local v12           #replacedNetType:I
    .end local v13           #x:I
    :cond_3
    const/4 v12, -0x1

    goto :goto_0

    .line 4924
    .restart local v5       #netType:I
    .restart local v7       #nt:Landroid/net/NetworkStateTracker;
    .restart local v12       #replacedNetType:I
    .restart local v13       #x:I
    :cond_4
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    goto :goto_2

    .line 4934
    .end local v5           #netType:I
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v15, v15

    add-int/lit8 v13, v15, -0x1

    :goto_3
    if-ltz v13, :cond_7

    .line 4935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    aget v5, v15, v13

    .line 4936
    .restart local v5       #netType:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v15, v5

    .line 4937
    .restart local v7       #nt:Landroid/net/NetworkStateTracker;
    if-ne v12, v5, :cond_8

    move-object/from16 v8, p1

    .line 4939
    .restart local v8       #ntNetworkInfo:Landroid/net/NetworkInfo;
    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    :cond_6
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_c

    .line 4942
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 4943
    .local v9, p:Landroid/net/LinkProperties;
    if-nez v9, :cond_a

    .line 4985
    .end local v5           #netType:I
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    .end local v8           #ntNetworkInfo:Landroid/net/NetworkInfo;
    .end local v9           #p:Landroid/net/LinkProperties;
    :cond_7
    monitor-exit p0

    return-void

    .line 4937
    .restart local v5       #netType:I
    .restart local v7       #nt:Landroid/net/NetworkStateTracker;
    :cond_8
    if-eqz v7, :cond_9

    :try_start_1
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 4944
    .restart local v8       #ntNetworkInfo:Landroid/net/NetworkInfo;
    .restart local v9       #p:Landroid/net/LinkProperties;
    :cond_a
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 4945
    .local v3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    .line 4952
    .local v2, changed:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    if-ne v5, v15, :cond_d

    .line 4954
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 4955
    .local v6, network:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4956
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    if-nez v15, :cond_b

    .line 4957
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v15, v3, v1}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    .line 4959
    :cond_b
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4980
    .end local v6           #network:Ljava/lang/String;
    :goto_5
    if-eqz v2, :cond_c

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->bumpDns()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4934
    .end local v2           #changed:Z
    .end local v3           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v9           #p:Landroid/net/LinkProperties;
    :cond_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 4959
    .restart local v2       #changed:Z
    .restart local v3       #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6       #network:Ljava/lang/String;
    .restart local v9       #p:Landroid/net/LinkProperties;
    :catchall_0
    move-exception v15

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4916
    .end local v2           #changed:Z
    .end local v3           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5           #netType:I
    .end local v6           #network:Ljava/lang/String;
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    .end local v8           #ntNetworkInfo:Landroid/net/NetworkInfo;
    .end local v9           #p:Landroid/net/LinkProperties;
    .end local v12           #replacedNetType:I
    .end local v13           #x:I
    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 4962
    .restart local v2       #changed:Z
    .restart local v3       #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v5       #netType:I
    .restart local v7       #nt:Landroid/net/NetworkStateTracker;
    .restart local v8       #ntNetworkInfo:Landroid/net/NetworkInfo;
    .restart local v9       #p:Landroid/net/LinkProperties;
    .restart local v12       #replacedNetType:I
    .restart local v13       #x:I
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-static {v3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 4969
    :goto_6
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4971
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v11, v15, v5

    .line 4972
    .local v11, pids:Ljava/util/List;
    const/4 v14, 0x0

    .local v14, y:I
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_e

    .line 4973
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4974
    .local v10, pid:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v2

    .line 4972
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 4964
    .end local v10           #pid:Ljava/lang/Integer;
    .end local v11           #pids:Ljava/util/List;
    .end local v14           #y:I
    :catch_0
    move-exception v4

    .line 4965
    .local v4, e:Ljava/lang/Exception;
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exception setting dns servers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 4977
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v11       #pids:Ljava/util/List;
    .restart local v14       #y:I
    :cond_e
    :try_start_a
    monitor-exit p0

    goto :goto_5

    .end local v11           #pids:Ljava/util/List;
    .end local v14           #y:I
    :catchall_2
    move-exception v15

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 5927
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5928
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5960
    :goto_0
    return-void

    .line 5931
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_1

    .line 5932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5937
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mActiveDefaultNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5941
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 5943
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_3

    .line 5944
    const-string v1, "handleInetConditionChange: starting a change hold"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5946
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 5947
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5953
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 5954
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 5950
    .end local v0           #delay:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 5958
    .end local v0           #delay:I
    :cond_3
    const-string v1, "handleInetConditionChange: currently in hold - not setting new end evt"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 5964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5968
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 5970
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5971
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5992
    :goto_0
    return-void

    .line 5974
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 5975
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5985
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5986
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5987
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5990
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5991
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2732
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 2734
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/16 v5, 0x1c

    const/4 v4, 0x0

    .line 2832
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2833
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetMobileData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; and in database is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabledSettings()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-eqz v1, :cond_2

    .line 2842
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v5

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2843
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2879
    :cond_1
    :goto_0
    return-void

    .line 2844
    :cond_2
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_4

    .line 2845
    sget-boolean v1, Lcom/android/server/ConnectivityService;->isDSDAProject:Z

    if-eqz v1, :cond_3

    .line 2846
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v5

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 2847
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    goto :goto_0

    .line 2849
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getMobileDataType(I)I

    move-result v0

    .line 2850
    .local v0, mobileType:I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 2852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2854
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    goto :goto_0

    .line 2859
    .end local v0           #mobileType:I
    :cond_4
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 2861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2863
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    invoke-interface {v1, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    goto :goto_0
.end method

.method private handleSetMobileDataPhoneType(I)V
    .locals 9
    .parameter "phoneType"

    .prologue
    const/16 v8, 0x1a

    const/16 v7, 0x1e

    const/16 v6, 0x74

    const/16 v5, 0x1c

    const/4 v4, 0x0

    .line 2968
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneTypeSettings()I

    move-result v0

    .line 2970
    .local v0, prePhoneType:I
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2971
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetMobileDataPhoneType to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; previous is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ext_mobile_data_phone_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2977
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-eqz v1, :cond_3

    .line 2978
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2980
    invoke-virtual {p0, v8}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2983
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2991
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v5

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2993
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v8

    invoke-virtual {v2, v6, v8, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2995
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3, v8, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3049
    :cond_1
    :goto_0
    return-void

    .line 2997
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3005
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v5

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3007
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v8

    invoke-virtual {v2, v6, v8, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3009
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3016
    :cond_3
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 3017
    sget-boolean v1, Lcom/android/server/ConnectivityService;->isDSDAProject:Z

    if-eqz v1, :cond_5

    .line 3018
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 3019
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v5

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3021
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v7

    invoke-virtual {v2, v6, v7, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3023
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3024
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 3025
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v5

    invoke-virtual {v2, v6, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3027
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v7

    invoke-virtual {v2, v6, v7, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3029
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3, v7, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3033
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3037
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 3038
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v7

    check-cast v1, Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1, v4}, Landroid/net/MobileDataStateTracker;->setUserDataEnableDualGsm(Z)V

    .line 3039
    const-string v1, "setUserDataEnableDualGsm: mobileType= TYPE_MOBILE_SUB_GSM enable = false"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3040
    :cond_6
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 3041
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v5

    check-cast v1, Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1, v4}, Landroid/net/MobileDataStateTracker;->setUserDataEnableDualGsm(Z)V

    .line 3042
    const-string v1, "setUserDataEnableDualGsm: mobileType= TYPE_MOBILE_GSM enable = false"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSetNetworkPreference(I)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 1078
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, -0x1

    .line 1082
    .local v1, networkPrefSetting:I
    const-string v2, "network_preference"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1085
    const-string v2, "network_preference"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1086
    monitor-enter p0

    .line 1090
    :try_start_0
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 1091
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetNetworkPreference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; and in database is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 1107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 1116
    return-void

    .line 1107
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 3120
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 3121
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetPolicyDataEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_0
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 3127
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3128
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 3129
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    .line 3130
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 3133
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    return-void
.end method

.method private handleSystemReady()V
    .locals 3

    .prologue
    .line 3976
    const/16 v0, 0xd

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 3979
    monitor-enter p0

    .line 3980
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 3981
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3982
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3985
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3987
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3988
    return-void

    .line 3985
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private htcCustomizedFailOver(ILandroid/net/NetworkInfo;Landroid/content/Intent;)V
    .locals 5
    .parameter "failoverCase"
    .parameter "info"
    .parameter "intent"

    .prologue
    .line 7170
    sget-boolean v3, Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z

    if-eqz v3, :cond_1

    .line 7171
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-ne v3, v4, :cond_1

    .line 7172
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 7173
    .local v1, type:I
    const/4 v2, 0x1

    .line 7174
    .local v2, useDefaultFailOverRule:Z
    const/4 v0, 0x0

    .line 7176
    .local v0, htcRuleFailOver:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7177
    packed-switch p1, :pswitch_data_0

    .line 7195
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_3

    .line 7196
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7197
    const-string v3, "isFailover"

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7198
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 7208
    .end local v0           #htcRuleFailOver:Ljava/lang/Boolean;
    .end local v1           #type:I
    .end local v2           #useDefaultFailOverRule:Z
    :cond_1
    :goto_1
    return-void

    .line 7182
    .restart local v0       #htcRuleFailOver:Ljava/lang/Boolean;
    .restart local v1       #type:I
    .restart local v2       #useDefaultFailOverRule:Z
    :pswitch_1
    if-eqz v1, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 7184
    :cond_2
    const/4 v2, 0x0

    .line 7185
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #htcRuleFailOver:Ljava/lang/Boolean;
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v0       #htcRuleFailOver:Ljava/lang/Boolean;
    goto :goto_0

    .line 7202
    :cond_3
    if-eqz v0, :cond_1

    .line 7203
    const-string v3, "isFailover"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 7177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private htcGetPackageInfo(Landroid/content/pm/PackageManager;III)Landroid/content/pm/PackageInfo;
    .locals 7
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7286
    const/4 v3, 0x0

    .line 7287
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 7289
    .local v1, getFlag:[I
    aput v5, v1, v5

    .line 7290
    and-int/lit8 v4, p4, 0x40

    if-eqz v4, :cond_0

    .line 7291
    aget v4, v1, v5

    or-int/lit8 v4, v4, 0x40

    aput v4, v1, v5

    .line 7293
    :cond_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    .line 7294
    aget v4, v1, v5

    or-int/lit8 v4, v4, 0x1

    aput v4, v1, v5

    .line 7296
    :cond_1
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_2

    .line 7297
    aget v4, v1, v5

    or-int/lit8 v4, v4, 0x2

    aput v4, v1, v5

    .line 7299
    :cond_2
    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_3

    .line 7300
    aget v4, v1, v5

    or-int/lit8 v4, v4, 0x4

    aput v4, v1, v5

    .line 7302
    :cond_3
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_4

    .line 7303
    aget v4, v1, v5

    or-int/lit8 v4, v4, 0x8

    aput v4, v1, v5

    .line 7305
    :cond_4
    and-int/lit16 v4, p4, 0x80

    if-eqz v4, :cond_5

    .line 7306
    aget v4, v1, v5

    or-int/lit16 v4, v4, 0x80

    aput v4, v1, v5

    .line 7308
    :cond_5
    aput v5, v1, v6

    .line 7309
    and-int/lit16 v4, p4, 0x80

    if-eqz v4, :cond_6

    .line 7310
    aget v4, v1, v6

    or-int/lit16 v4, v4, 0x80

    aput v4, v1, v6

    .line 7312
    :cond_6
    and-int/lit16 v4, p4, 0x400

    if-eqz v4, :cond_7

    .line 7313
    aget v4, v1, v6

    or-int/lit16 v4, v4, 0x400

    aput v4, v1, v6

    .line 7316
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v2

    .line 7318
    .local v2, packageName:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    aget v4, v1, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7319
    const/4 v4, 0x1

    aget v4, v1, v4

    if-eqz v4, :cond_8

    .line 7320
    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7325
    :cond_8
    :goto_0
    return-object v3

    .line 7322
    :catch_0
    move-exception v0

    .line 7323
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private htcPermittedTetherCallingFrom(II)Ljava/lang/Boolean;
    .locals 11
    .parameter "callingUid"
    .parameter "callingPid"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 7593
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v6

    .line 7594
    .local v6, uid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    .line 7595
    .local v4, pid:I
    iget v9, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-ne v4, v9, :cond_3

    move v2, v7

    .line 7597
    .local v2, isThroughSystem:Z
    :goto_0
    const/4 v3, 0x0

    .line 7598
    .local v3, originCallFrom:Ljava/lang/Boolean;
    move v1, v6

    .line 7599
    .local v1, appUid:I
    move v0, v4

    .line 7600
    .local v0, appPid:I
    if-eqz v2, :cond_0

    .line 7601
    move v1, p1

    .line 7602
    move v0, p2

    .line 7604
    :cond_0
    const/4 v5, 0x0

    .line 7605
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-ltz v1, :cond_1

    if-ltz v0, :cond_1

    .line 7607
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x4c0

    invoke-direct {p0, v9, v1, v0, v10}, Lcom/android/server/ConnectivityService;->htcGetPackageInfo(Landroid/content/pm/PackageManager;III)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 7613
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 7614
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7616
    :cond_2
    return-object v3

    .end local v0           #appPid:I
    .end local v1           #appUid:I
    .end local v2           #isThroughSystem:Z
    .end local v3           #originCallFrom:Ljava/lang/Boolean;
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    move v2, v8

    .line 7595
    goto :goto_0

    .restart local v0       #appPid:I
    .restart local v1       #appUid:I
    .restart local v2       #isThroughSystem:Z
    .restart local v3       #originCallFrom:Ljava/lang/Boolean;
    .restart local v5       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    move v7, v8

    .line 7614
    goto :goto_2

    .line 7611
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private htcUpdateNetworkInfo(ILandroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 7219
    return-void
.end method

.method private isBlockedBySomeReason(II)Ljava/lang/String;
    .locals 2
    .parameter "networkType"
    .parameter "usedNetworkType"

    .prologue
    .line 6573
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isBlockedForBothStartStopBySomeReason(II)Ljava/lang/String;

    move-result-object v0

    .line 6574
    .local v0, blockedReason:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 6584
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6585
    const-string v0, "data disabled rejected"

    .line 6590
    :cond_0
    if-nez v0, :cond_2

    if-ne p1, p2, :cond_2

    .line 6591
    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_2

    .line 6595
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6596
    const-string v0, "data disabled rejected"

    .line 6622
    :cond_2
    :goto_0
    return-object v0

    .line 6597
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 6598
    const-string v0, "not prefer mobile data phone type"

    goto :goto_0
.end method

.method private isBlockedForBothStartStopBySomeReason(II)Ljava/lang/String;
    .locals 4
    .parameter "networkType"
    .parameter "usedNetworkType"

    .prologue
    .line 6531
    const/4 v0, 0x0

    .line 6532
    .local v0, blockedReason:Ljava/lang/String;
    if-nez v0, :cond_1

    const/16 v2, 0x10

    if-eq p2, v2, :cond_0

    const/16 v2, 0xa

    if-ne p2, v2, :cond_1

    .line 6535
    :cond_0
    const/4 v1, 0x0

    .line 6536
    .local v1, signatureMatch:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_3

    .line 6537
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/content/HtcContext;->callingWithPlatformOrSprintSignature(Landroid/content/Context;I)Z

    move-result v1

    .line 6548
    :goto_0
    if-nez v1, :cond_1

    .line 6549
    const-string v0, "Without permission"

    .line 6552
    .end local v1           #signatureMatch:Z
    :cond_1
    if-nez v0, :cond_2

    const/16 v2, 0xb

    if-ne p2, v2, :cond_2

    .line 6554
    const/4 v1, 0x0

    .line 6555
    .restart local v1       #signatureMatch:Z
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/content/HtcContext;->callingWithPlatformSignature(Landroid/content/Context;I)Z

    move-result v1

    .line 6556
    if-nez v1, :cond_2

    .line 6557
    const-string v0, "Without permission"

    .line 6569
    .end local v1           #signatureMatch:Z
    :cond_2
    return-object v0

    .line 6539
    .restart local v1       #signatureMatch:Z
    :cond_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v2, v3, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    .line 6541
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 6546
    :cond_5
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/content/HtcContext;->callingWithPlatformSignature(Landroid/content/Context;I)Z

    move-result v1

    goto :goto_0
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 8
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    .line 1272
    :try_start_0
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1276
    .local v1, iface:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1278
    .local v2, networkCostly:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v5, p2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1279
    .local v3, uidRules:I
    monitor-exit v6

    .line 1281
    if-eqz v2, :cond_0

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 1282
    const/4 v4, 0x1

    .line 1290
    .end local v1           #iface:Ljava/lang/String;
    .end local v2           #networkCostly:Z
    .end local v3           #uidRules:I
    :cond_0
    :goto_0
    return v4

    .line 1279
    .restart local v1       #iface:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1288
    .end local v1           #iface:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1289
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkBlocked get exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1583
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1584
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1590
    :goto_0
    return v1

    .line 1587
    :catch_0
    move-exception v1

    .line 1590
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRemovePrivateDnsRoutesRequired(I)Z
    .locals 8
    .parameter "checkNetType"

    .prologue
    const/4 v6, 0x1

    .line 7242
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, p1

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7243
    .local v3, info:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 7262
    :cond_0
    :goto_0
    return v6

    .line 7246
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 7247
    .local v2, ifName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 7250
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    .line 7251
    .local v5, netType:I
    if-eq v5, p1, :cond_2

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isPrivateDnsRouteSet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7254
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7255
    if-eqz v3, :cond_2

    .line 7256
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7257
    const/4 v6, 0x0

    goto :goto_0

    .line 7250
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadGlobalProxy()V
    .locals 7

    .prologue
    .line 6048
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 6049
    .local v4, res:Landroid/content/ContentResolver;
    const-string v5, "global_http_proxy_host"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6050
    .local v1, host:Ljava/lang/String;
    const-string v5, "global_http_proxy_port"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 6051
    .local v2, port:I
    const-string v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6053
    .local v0, exclList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6054
    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct {v3, v1, v2, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6055
    .local v3, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 6056
    :try_start_0
    iput-object v3, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 6057
    monitor-exit v6

    .line 6059
    .end local v3           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_0
    return-void

    .line 6057
    .restart local v3       #proxyProperties:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6136
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    return-void
.end method

.method private logEnableStatus([Z)Ljava/lang/String;
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 7582
    array-length v2, p1

    new-array v1, v2, [B

    .line 7583
    .local v1, status:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 7584
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 7583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7584
    :cond_0
    const/16 v2, 0x30

    goto :goto_1

    .line 7586
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6140
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6145
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6146
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "info"
    .parameter "bcastType"

    .prologue
    const/4 v3, 0x1

    .line 3749
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3751
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_4

    .line 3752
    :cond_0
    const-string v1, "networkInfo"

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3761
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->removeUnestablishedFailoverFromConnection(Landroid/net/NetworkInfo;)V

    .line 3762
    sget-boolean v1, Lcom/android/server/ConnectivityService;->HTC_CUSTOMIZED_FAIL_OVER:Z

    if-eqz v1, :cond_5

    .line 3763
    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/ConnectivityService;->htcCustomizedFailOver(ILandroid/net/NetworkInfo;Landroid/content/Intent;)V

    .line 3770
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3771
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3773
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3774
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3777
    :cond_3
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3778
    return-object v0

    .line 3755
    :cond_4
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 3766
    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3767
    const-string v1, "isFailover"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3768
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    goto :goto_1
.end method

.method private modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z
    .locals 9
    .parameter "ifaceName"
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    const/4 v8, 0x0

    .line 2590
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2591
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v0, v8

    .line 2677
    :goto_0
    return v0

    .line 2595
    :cond_1
    const/16 v0, 0xa

    if-le p4, v0, :cond_2

    .line 2596
    const-string v0, "Error modifying route - too much recursion"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 2597
    goto :goto_0

    .line 2600
    :cond_2
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2601
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 2602
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-eqz v3, :cond_3

    .line 2603
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2605
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 2611
    :goto_1
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    .line 2614
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_3
    if-eqz p5, :cond_6

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2617
    if-eqz p6, :cond_5

    .line 2618
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2619
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2609
    .restart local v3       #bestRoute:Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_1

    .line 2621
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2623
    :catch_0
    move-exception v7

    .line 2631
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    move v0, v8

    .line 2633
    goto/16 :goto_0

    .line 2638
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    if-eqz p6, :cond_8

    .line 2639
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2640
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2643
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2644
    :catch_1
    move-exception v7

    .line 2652
    .restart local v7       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to remove a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    move v0, v8

    .line 2654
    goto/16 :goto_0

    .line 2657
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as it\'s still in use"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2660
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2662
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 2663
    :catch_2
    move-exception v7

    .line 2671
    .restart local v7       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to remove a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    move v0, v8

    .line 2673
    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z
    .locals 8
    .parameter "lp"
    .parameter "addr"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    .line 2558
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 2559
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-nez v3, :cond_0

    .line 2560
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 2577
    :goto_0
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 2579
    .local v7, dst:Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    .line 2580
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    .line 2584
    .local v1, interfaze:Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 2562
    .end local v1           #interfaze:Ljava/lang/String;
    .end local v7           #dst:Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2564
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0

    .line 2568
    :cond_1
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0

    .line 2582
    .restart local v7       #dst:Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #interfaze:Ljava/lang/String;
    goto :goto_1
.end method

.method private notifyActiveNetworkUpdate()V
    .locals 0

    .prologue
    .line 7026
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->setActiveNetworkProp()V

    .line 7027
    return-void
.end method

.method private predictRequestedNetworkType(I)I
    .locals 7
    .parameter "networkType"

    .prologue
    .line 6188
    move v5, p1

    .line 6189
    .local v5, usedNetworkType:I
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6190
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 6191
    .local v2, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 6192
    .local v4, uid:I
    const/4 v0, 0x0

    .line 6198
    .local v0, found:Z
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v5

    .line 6199
    if-eqz p1, :cond_3

    const/16 v6, 0x1c

    if-eq p1, v6, :cond_3

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_3

    const/16 v6, 0x1e

    if-eq p1, v6, :cond_3

    .line 6206
    monitor-enter p0

    .line 6207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 6208
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 6209
    .local v3, u:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v6, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v4, v6, :cond_0

    iget v6, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v2, v6, :cond_0

    iget v6, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mConvertedType:I

    if-ne v5, v6, :cond_0

    .line 6211
    const/4 v0, 0x1

    .line 6207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6214
    .end local v3           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0

    .line 6229
    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #pid:I
    .end local v4           #uid:I
    :cond_2
    :goto_1
    return v5

    .line 6214
    .restart local v0       #found:Z
    .restart local v1       #i:I
    .restart local v2       #pid:I
    .restart local v4       #uid:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 6218
    .end local v1           #i:I
    :cond_3
    monitor-enter p0

    .line 6219
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-nez v0, :cond_5

    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 6220
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 6221
    .restart local v3       #u:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v6, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v4, v6, :cond_4

    iget v6, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v2, v6, :cond_4

    .line 6222
    const/4 v0, 0x1

    .line 6223
    iget v5, v3, Lcom/android/server/ConnectivityService$FeatureUser;->mConvertedType:I

    .line 6219
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6226
    .end local v3           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_5
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6
.end method

.method private queryNetworkTypeConvert(I)I
    .locals 5
    .parameter "networkType"

    .prologue
    .line 7059
    move v2, p1

    .line 7060
    .local v2, replacedNetworkType:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xaf

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 7063
    :cond_0
    if-nez p1, :cond_1

    .line 7064
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/16 v4, 0x10

    aget-object v1, v3, v4

    .line 7065
    .local v1, mip0t:Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_1

    .line 7066
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 7067
    .local v0, mip0state:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_1

    .line 7070
    const/16 v2, 0x10

    .line 7078
    .end local v0           #mip0state:Landroid/net/NetworkInfo$State;
    .end local v1           #mip0t:Landroid/net/NetworkStateTracker;
    :cond_1
    :goto_0
    return v2

    .line 7076
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result v2

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 17
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 4672
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reassessPidDns for pid "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4674
    monitor-enter p0

    .line 4676
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v2, arr$:[I
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_5

    aget v5, v2, v6

    .line 4683
    .local v5, i:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    if-ne v5, v15, :cond_1

    .line 4676
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4687
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v15, v5

    .line 4696
    .local v10, nt:Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_0

    .line 4699
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 4700
    .local v9, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    :cond_2
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_0

    .line 4703
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 4704
    .local v11, p:Landroid/net/LinkProperties;
    if-eqz v11, :cond_0

    .line 4705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v13, v15, v5

    .line 4706
    .local v13, pids:Ljava/util/List;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 4707
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 4708
    .local v12, pid:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_4

    .line 4709
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 4710
    .local v3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    .line 4711
    if-eqz p2, :cond_3

    .line 4712
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 4714
    :cond_3
    monitor-exit p0

    .line 4729
    .end local v3           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v7           #j:I
    .end local v9           #ni:Landroid/net/NetworkInfo;
    .end local v10           #nt:Landroid/net/NetworkStateTracker;
    .end local v11           #p:Landroid/net/LinkProperties;
    .end local v12           #pid:Ljava/lang/Integer;
    .end local v13           #pids:Ljava/util/List;
    :goto_2
    return-void

    .line 4706
    .restart local v7       #j:I
    .restart local v9       #ni:Landroid/net/NetworkInfo;
    .restart local v10       #nt:Landroid/net/NetworkStateTracker;
    .restart local v11       #p:Landroid/net/LinkProperties;
    .restart local v12       #pid:Ljava/lang/Integer;
    .restart local v13       #pids:Ljava/util/List;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4720
    .end local v5           #i:I
    .end local v7           #j:I
    .end local v9           #ni:Landroid/net/NetworkInfo;
    .end local v10           #nt:Landroid/net/NetworkStateTracker;
    .end local v11           #p:Landroid/net/LinkProperties;
    .end local v12           #pid:Ljava/lang/Integer;
    .end local v13           #pids:Ljava/util/List;
    :cond_5
    const/4 v5, 0x1

    .line 4721
    .restart local v5       #i:I
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "net.dns"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 4725
    .local v14, prop:Ljava/lang/String;
    :try_start_1
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_7

    .line 4726
    if-eqz p2, :cond_6

    .line 4727
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->bumpDns()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4729
    :cond_6
    :try_start_2
    monitor-exit p0

    goto :goto_2

    .line 4742
    .end local v2           #arr$:[I
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v14           #prop:Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 4731
    .restart local v2       #arr$:[I
    .restart local v5       #i:I
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v14       #prop:Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clear "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4720
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4736
    :catch_0
    move-exception v4

    .line 4737
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clear "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method private registerForBroadcasts()V
    .locals 4

    .prologue
    .line 7789
    sget-boolean v0, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v0, :cond_1

    .line 7790
    sget-boolean v0, Lcom/android/server/ConnectivityService;->isDSDAProject:Z

    if-nez v0, :cond_0

    .line 7791
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.internal.telephony.dualgsm_readytoswitch"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7798
    :cond_0
    :goto_0
    return-void

    .line 7793
    :cond_1
    sget-boolean v0, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-eqz v0, :cond_0

    .line 7794
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7795
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7796
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mReciever:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 8
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    const/4 v4, 0x0

    .line 2537
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 2539
    .local v7, dst:Ljava/net/InetAddress;
    instance-of v0, v7, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 2540
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v1

    .local v1, interfaze:Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move v6, p3

    .line 2544
    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 2542
    .end local v1           #interfaze:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #interfaze:Ljava/lang/String;
    goto :goto_0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 2
    .parameter "lp"
    .parameter "addr"

    .prologue
    .line 2553
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private removeUnestablishedFailoverFromConnection(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 7143
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7144
    const/4 v1, 0x0

    .local v1, t:I
    :goto_0
    const/16 v2, 0x24

    if-gt v1, v2, :cond_1

    .line 7145
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 7146
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 7147
    .local v0, netIf:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7148
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 7144
    .end local v0           #netIf:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7153
    .end local v1           #t:I
    :cond_1
    return-void
.end method

.method private requestNetworkTypeConvert(I)I
    .locals 7
    .parameter "networkType"

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    .line 6958
    move v0, p1

    .line 6959
    .local v0, detailNetworkType:I
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6961
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/server/ConnectivityService;->callingWithVerizonApnAllowed(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6963
    const/16 v0, 0x16

    .line 7019
    :cond_0
    :goto_0
    return v0

    .line 6966
    :cond_1
    if-ne p1, v5, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    const/4 v5, 0x7

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/ConnectivityService;->callingWithVerizonApnAllowed(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6968
    const/16 v0, 0x16

    goto :goto_0

    .line 6971
    :cond_2
    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/server/ConnectivityService;->callingWithVerizonApnAllowed(Landroid/content/Context;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6973
    const/4 v0, 0x5

    goto :goto_0

    .line 6976
    :cond_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x75

    if-ne v2, v3, :cond_4

    .line 6977
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 6978
    const/16 v0, 0x16

    goto :goto_0

    .line 6983
    :cond_4
    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v2, :cond_0

    .line 6984
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v1

    .line 6985
    .local v1, phoneType:I
    if-nez p1, :cond_6

    .line 6986
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getMobileDataType(I)I

    move-result v0

    goto :goto_0

    .line 6989
    :cond_6
    if-ne p1, v5, :cond_7

    .line 6990
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 6992
    :pswitch_1
    const/16 v0, 0x1d

    .line 6993
    goto :goto_0

    .line 6995
    :pswitch_2
    const/16 v0, 0x1f

    .line 6996
    goto :goto_0

    .line 6998
    :pswitch_3
    const/16 v0, 0x1b

    goto :goto_0

    .line 7003
    :cond_7
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    .line 7004
    packed-switch v1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 7006
    :pswitch_5
    const/16 v0, 0x23

    .line 7007
    goto :goto_0

    .line 7009
    :pswitch_6
    const/16 v0, 0x24

    .line 7010
    goto :goto_0

    .line 7012
    :pswitch_7
    const/16 v0, 0x22

    goto :goto_0

    .line 6990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 7004
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3735
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3736
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3737
    return-void
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "delayMs"

    .prologue
    .line 3740
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3741
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 3742
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 3782
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3783
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"
    .parameter "delayMs"

    .prologue
    .line 3786
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 3787
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3745
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 3746
    return-void
.end method

.method private sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 7779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7780
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 7781
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7782
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7783
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 7784
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntent with name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7786
    :cond_0
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 6105
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6106
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending Proxy Broadcast for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6108
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6110
    const-string v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6111
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 6112
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 3905
    const-string v3, "htcCurrentActiveNetwork"

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3907
    monitor-enter p0

    .line 3908
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 3909
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 3911
    :cond_0
    const/high16 v3, 0x800

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStickyBroadcast: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3917
    const/4 v2, 0x1

    .line 3919
    .local v2, sendStick:Z
    :try_start_1
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3920
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    .line 3921
    const/4 v2, 0x0

    .line 3926
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 3928
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3934
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3938
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3941
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/connectivity/Tethering;->htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3947
    :cond_3
    :goto_2
    return-void

    .line 3923
    :catch_0
    move-exception v0

    .line 3924
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0

    .line 3931
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 3934
    .end local v2           #sendStick:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 3943
    .restart local v2       #sendStick:Z
    :catch_1
    move-exception v0

    .line 3944
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[tether] error to getHotspotEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "delayMs"

    .prologue
    .line 3950
    if-gtz p2, :cond_0

    .line 3951
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3960
    :goto_0
    return-void

    .line 3954
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendStickyBroadcastDelayed: delayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3957
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setActiveNetworkProp()V
    .locals 3

    .prologue
    .line 7033
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->ACTIVE_NET_PROP:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7037
    :goto_0
    return-void

    .line 7034
    :catch_0
    move-exception v0

    .line 7035
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set active net failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .parameter "bufferSizes"

    .prologue
    .line 4647
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4649
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 4650
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 4651
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4654
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4655
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4656
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4663
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 4658
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4660
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4661
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startUsingNetworkRequestList()[Z
    .locals 5

    .prologue
    .line 7225
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v4, v4

    new-array v1, v4, [Z

    .line 7226
    .local v1, requestList:[Z
    monitor-enter p0

    .line 7227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 7228
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 7229
    .local v2, u:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v3, v2, Lcom/android/server/ConnectivityService$FeatureUser;->mConvertedType:I

    .line 7230
    .local v3, usedNetworkType:I
    if-nez v3, :cond_0

    .line 7231
    iget-object v4, v2, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v3

    .line 7233
    :cond_0
    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 7227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7235
    .end local v2           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v3           #usedNetworkType:I
    :cond_1
    monitor-exit p0

    .line 7236
    return-object v1

    .line 7235
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 27
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 2156
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 2157
    .local v13, networkType:I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 2158
    .local v7, feature:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 2159
    .local v14, pid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    move/from16 v20, v0

    .line 2161
    .local v20, uid:I
    const/16 v17, 0x0

    .line 2162
    .local v17, tracker:Landroid/net/NetworkStateTracker;
    const/4 v4, 0x0

    .line 2172
    .local v4, callTeardown:Z
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "stopUsingNetworkFeature for net "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2175
    .local v6, dbgMessagePrefix:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2184
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "invalid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2187
    const/16 v23, -0x1

    .line 2371
    :goto_0
    return v23

    .line 2191
    :cond_0
    const/16 v18, -0x1

    .line 2195
    .local v18, trackerIdx:I
    monitor-enter p0

    .line 2197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 2206
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ignoring - this process has no outstanding requests"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2209
    const/16 v23, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2350
    :catchall_0
    move-exception v23

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 2211
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2220
    if-nez p2, :cond_3

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2222
    .local v22, x:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2229
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ignoring as dup is found"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2231
    const/16 v23, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2237
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v22           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 2238
    .local v16, removeList:[Z
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_7

    .line 2239
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_5

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2241
    .restart local v22       #x:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 2242
    const/16 v23, 0x1

    aput-boolean v23, v16, v9

    .line 2239
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2246
    .end local v22           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_5
    const-string v23, "ConnectivityService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " remove:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v15, v23, -0x1

    .line 2249
    .local v15, removeIdx:I
    :goto_2
    if-ltz v15, :cond_7

    .line 2250
    aget-boolean v23, v16, v15

    if-eqz v23, :cond_6

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2252
    .local v19, uRemove:Lcom/android/server/ConnectivityService$FeatureUser;
    if-eqz v19, :cond_6

    .line 2253
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 2256
    .end local v19           #uRemove:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 2269
    .end local v9           #i:I
    .end local v15           #removeIdx:I
    .end local v16           #removeList:[Z
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v8

    .line 2270
    .local v8, featureNetworkType:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityService$FeatureUser;->mConvertedType:I

    move/from16 v21, v0

    .line 2278
    .local v21, usedNetworkType:I
    const/16 v23, 0x8

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 2285
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$Injector;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v23, v0

    aget-object v17, v23, v21

    .line 2286
    if-nez v17, :cond_8

    .line 2295
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ignoring - no known tracker for net type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2298
    const/16 v23, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2307
    :cond_8
    move/from16 v0, v21

    if-eq v0, v13, :cond_b

    const/16 v23, 0x1a

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const/16 v23, 0x1c

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const/16 v23, 0x1e

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2313
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 2314
    .local v5, currentPid:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2315
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v14, v1}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v21

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-eqz v23, :cond_a

    .line 2325
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "not tearing down special network "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "others still using it"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2330
    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 2331
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 2332
    .local v11, info:Landroid/net/NetworkInfo;
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2333
    .local v12, intent:Landroid/content/Intent;
    const-string v23, "networkInfo"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2338
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v12           #intent:Landroid/content/Intent;
    :cond_9
    const/16 v23, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 2340
    :cond_a
    const/4 v4, 0x1

    .line 2348
    .end local v5           #currentPid:Ljava/lang/Integer;
    :goto_3
    move/from16 v18, v21

    .line 2350
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    if-eqz v4, :cond_c

    .line 2362
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "send teardown request "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x74

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2366
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2343
    :cond_b
    :try_start_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "stopUsingNetworkFeature: net "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " not a known feature - dropping"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2369
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Doing old network teardown"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2371
    const/16 v23, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 4
    .parameter "netTracker"

    .prologue
    const/4 v0, 0x1

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1256
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)Landroid/net/NetworkStateTracker;
    .locals 34
    .parameter "prevNetType"

    .prologue
    .line 3383
    const/16 v17, 0x0

    .line 3384
    .local v17, newNet:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, p1

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, p1

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 3387
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 3388
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->notifyActiveNetworkUpdate()V

    .line 3405
    :cond_1
    const/16 v19, -0x1

    .line 3406
    .local v19, newType:I
    const/16 v18, -0x1

    .line 3408
    .local v18, newPriority:I
    const/16 v16, -0x1

    .line 3409
    .local v16, newExclusiveType:I
    const/16 v30, 0x25

    move/from16 v0, v30

    new-array v0, v0, [Z

    move-object/from16 v20, v0

    .line 3410
    .local v20, newTypes:[Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v23

    .line 3411
    .local v23, prevGroupPriority:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v3

    .line 3412
    .local v3, activeGroupPriority:I
    const/16 v26, -0x1

    .line 3413
    .local v26, reportSwitchToNet:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->startUsingNetworkRequestList()[Z

    move-result-object v27

    .line 3414
    .local v27, requestedTypes:[Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v30

    if-nez v30, :cond_3

    const/16 v22, 0x1

    .line 3416
    .local v22, noMobileData:Z
    :goto_0
    const/4 v7, 0x0

    .local v7, checkType:I
    :goto_1
    const/16 v30, 0x24

    move/from16 v0, v30

    if-gt v7, v0, :cond_10

    .line 3417
    move/from16 v0, p1

    if-ne v7, v0, :cond_4

    .line 3416
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3414
    .end local v7           #checkType:I
    .end local v22           #noMobileData:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 3418
    .restart local v7       #checkType:I
    .restart local v22       #noMobileData:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    if-eqz v30, :cond_2

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    if-eqz v30, :cond_2

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-interface/range {v30 .. v30}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    .line 3456
    .local v21, ni:Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 3457
    .local v2, activeExclusive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 3458
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    :cond_5
    const/4 v2, 0x1

    .line 3459
    :goto_3
    if-eqz v2, :cond_6

    .line 3460
    move/from16 v16, v7

    .line 3464
    :cond_6
    if-nez v2, :cond_2

    .line 3469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-nez v30, :cond_7

    aget-boolean v30, v27, v7

    if-eqz v30, :cond_2

    .line 3470
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v7, v0, :cond_a

    .line 3471
    move/from16 v19, v7

    .line 3472
    const/16 v30, 0x1

    aput-boolean v30, v20, v7

    .line 3473
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_8

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 3474
    :cond_8
    move/from16 v26, v7

    goto/16 :goto_2

    .line 3458
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 3478
    :cond_a
    const/16 v28, 0x0

    .line 3479
    .local v28, setToCheckList:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v5

    .line 3480
    .local v5, checkGroupPriority:I
    if-nez v28, :cond_c

    .line 3481
    move/from16 v0, v23

    if-lt v5, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-eqz v30, :cond_c

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 3484
    :cond_b
    const/16 v28, 0x1

    .line 3487
    :cond_c
    if-nez v28, :cond_e

    .line 3488
    move/from16 v0, v23

    if-le v5, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    :cond_d
    if-lt v5, v3, :cond_e

    .line 3493
    const/16 v28, 0x1

    .line 3496
    :cond_e
    if-eqz v28, :cond_2

    .line 3497
    const/16 v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 3498
    move/from16 v19, v7

    .line 3500
    :cond_f
    const/16 v30, 0x1

    aput-boolean v30, v20, v7

    goto/16 :goto_2

    .line 3515
    .end local v2           #activeExclusive:Z
    .end local v5           #checkGroupPriority:I
    .end local v21           #ni:Landroid/net/NetworkInfo;
    .end local v28           #setToCheckList:Z
    :cond_10
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_11

    .line 3516
    sget-object v31, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "failover "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, " try : "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, "/"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, ", pref="

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, ", mobile="

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-nez v22, :cond_13

    const/16 v30, 0x1

    :goto_4
    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_11
    const/16 v30, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v16

    .line 3730
    .end local v3           #activeGroupPriority:I
    .end local v7           #checkType:I
    .end local v16           #newExclusiveType:I
    .end local v18           #newPriority:I
    .end local v19           #newType:I
    .end local v20           #newTypes:[Z
    .end local v22           #noMobileData:Z
    .end local v23           #prevGroupPriority:I
    .end local v26           #reportSwitchToNet:I
    .end local v27           #requestedTypes:[Z
    :cond_12
    :goto_5
    return-object v17

    .line 3516
    .restart local v3       #activeGroupPriority:I
    .restart local v7       #checkType:I
    .restart local v16       #newExclusiveType:I
    .restart local v18       #newPriority:I
    .restart local v19       #newType:I
    .restart local v20       #newTypes:[Z
    .restart local v22       #noMobileData:Z
    .restart local v23       #prevGroupPriority:I
    .restart local v26       #reportSwitchToNet:I
    .restart local v27       #requestedTypes:[Z
    :cond_13
    const/16 v30, 0x0

    goto :goto_4

    .line 3525
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, p1

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isExclusive()Z

    move-result v30

    if-eqz v30, :cond_25

    .line 3526
    if-ltz v26, :cond_16

    const/4 v8, 0x1

    .line 3527
    .local v8, connectedWanExisted:Z
    :goto_6
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v15

    .line 3529
    .local v15, mobilePriority:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v4, arr$:[I
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_7
    if-ge v10, v13, :cond_23

    aget v7, v4, v10

    .line 3530
    move/from16 v0, p1

    if-eq v7, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, p1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    move/from16 v30, v0

    if-ltz v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, p1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v31, v0

    aget-object v31, v31, v7

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    .line 3529
    :cond_15
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 3526
    .end local v4           #arr$:[I
    .end local v8           #connectedWanExisted:Z
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v15           #mobilePriority:I
    :cond_16
    const/4 v8, 0x0

    goto :goto_6

    .line 3535
    .restart local v4       #arr$:[I
    .restart local v8       #connectedWanExisted:Z
    .restart local v10       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #mobilePriority:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v7

    .line 3536
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-gt v0, v15, :cond_18

    if-nez v22, :cond_15

    .line 3540
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-eqz v30, :cond_21

    .line 3541
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_20

    .line 3542
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v29

    .line 3544
    .local v29, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v30

    if-nez v30, :cond_19

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1a

    :cond_19
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 3547
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/Boolean;

    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v31, v30, v7

    .line 3548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_1c

    .line 3549
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_1b

    .line 3550
    sget-object v30, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to failover exclusive WAN : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :cond_1b
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/Object;

    .line 3554
    .local v14, mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3555
    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3556
    const/16 v30, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    .line 3561
    .end local v14           #mParams:[Ljava/lang/Object;
    :cond_1c
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_1d

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 3562
    :cond_1d
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Recovering to already "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :goto_9
    if-nez v8, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    if-ltz v26, :cond_1e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v30

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_15

    .line 3577
    :cond_1e
    move/from16 v26, v7

    goto/16 :goto_8

    .line 3565
    .restart local v29       #switchTo:Landroid/net/NetworkInfo;
    :cond_1f
    const-string v30, "ConnectivityService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Attempting to recover to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3571
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :cond_20
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_9

    .line 3580
    :cond_21
    aget-boolean v30, v27, v7

    if-eqz v30, :cond_15

    .line 3581
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v25

    .line 3582
    .local v25, reconnectResult:Z
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_15

    .line 3583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/Boolean;

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v31, v30, v7

    .line 3584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    aget-object v30, v30, v7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_15

    .line 3585
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_22

    .line 3586
    sget-object v30, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to failover exclusive LAN : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_22
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/Object;

    .line 3590
    .restart local v14       #mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3591
    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3592
    const/16 v30, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 3599
    .end local v14           #mParams:[Ljava/lang/Object;
    .end local v25           #reconnectResult:Z
    :cond_23
    if-ltz v26, :cond_24

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v26

    goto/16 :goto_5

    .line 3603
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 3607
    .end local v4           #arr$:[I
    .end local v8           #connectedWanExisted:Z
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v15           #mobilePriority:I
    :cond_25
    const/16 v30, -0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_3d

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v19

    .line 3617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    if-ltz v30, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    aget-boolean v30, v20, v30

    if-eqz v30, :cond_2b

    .line 3619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    aget-object v17, v30, v31

    .line 3620
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_37

    .line 3621
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v29

    .line 3622
    .restart local v29       #switchTo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-eqz v30, :cond_26

    .line 3623
    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3625
    :cond_26
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v30

    if-nez v30, :cond_27

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_28

    :cond_27
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v30

    if-eqz v30, :cond_35

    .line 3628
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    new-instance v32, Ljava/lang/Boolean;

    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v32, v30, v31

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_2a

    .line 3630
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_29

    .line 3631
    sget-object v30, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to failover pref WAN : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_29
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/Object;

    .line 3635
    .restart local v14       #mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3636
    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3637
    const/16 v30, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    .line 3663
    .end local v14           #mParams:[Ljava/lang/Object;
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :cond_2a
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    const/16 v31, 0x0

    aput-boolean v31, v20, v30

    .line 3666
    :cond_2b
    const/16 v24, 0x0

    .line 3667
    .local v24, priorityListIndex:I
    const/4 v12, -0x1

    .line 3668
    .local v12, lastWanGroupPriority:I
    const/4 v9, 0x0

    .line 3670
    .local v9, getConnectedWan:Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_3b

    if-eqz v9, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v30, v0

    aget v30, v30, v24

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v30

    move/from16 v0, v30

    if-ne v0, v12, :cond_3b

    .line 3672
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v30, v0

    aget v6, v30, v24

    .line 3673
    .local v6, checkNetType:I
    aget-boolean v30, v20, v6

    if-eqz v30, :cond_34

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v6

    .line 3675
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_3a

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v11

    .line 3677
    .local v11, isWanType:Z
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v29

    .line 3678
    .restart local v29       #switchTo:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_2d

    .line 3679
    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 3681
    :cond_2d
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v30

    if-nez v30, :cond_2e

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2f

    :cond_2e
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v30

    if-eqz v30, :cond_31

    .line 3684
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/Boolean;

    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v31, v30, v6

    .line 3685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_31

    .line 3686
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_30

    .line 3687
    sget-object v30, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to failover : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_30
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/Object;

    .line 3691
    .restart local v14       #mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3692
    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3693
    const/16 v30, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    .line 3697
    .end local v14           #mParams:[Ljava/lang/Object;
    :cond_31
    if-eqz v11, :cond_34

    .line 3698
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_32

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_33

    .line 3699
    :cond_32
    const/4 v9, 0x1

    .line 3700
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v12

    .line 3702
    :cond_33
    if-gez v26, :cond_39

    .line 3703
    move/from16 v26, v6

    .line 3716
    .end local v11           #isWanType:Z
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :cond_34
    :goto_c
    add-int/lit8 v24, v24, 0x1

    .line 3717
    goto/16 :goto_b

    .line 3641
    .end local v6           #checkNetType:I
    .end local v9           #getConnectedWan:Z
    .end local v12           #lastWanGroupPriority:I
    .end local v24           #priorityListIndex:I
    .restart local v29       #switchTo:Landroid/net/NetworkInfo;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkConfig;->isWAN()Z

    move-result v30

    if-eqz v30, :cond_2a

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_36

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2a

    .line 3643
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v26, v0

    goto/16 :goto_a

    .line 3647
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :cond_37
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v25

    .line 3648
    .restart local v25       #reconnectResult:Z
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_2a

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    new-instance v32, Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v32, v30, v31

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mReconnectIssued:[Ljava/lang/Boolean;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v31, v0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-nez v30, :cond_2a

    .line 3651
    sget-boolean v30, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v30, :cond_38

    .line 3652
    sget-object v30, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to failover pref LAN : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_38
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v14, v0, [Ljava/lang/Object;

    .line 3656
    .restart local v14       #mParams:[Ljava/lang/Object;
    const/16 v30, 0x0

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3657
    const/16 v30, 0x1

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/lang/Integer;-><init>(I)V

    aput-object v31, v14, v30

    .line 3658
    const/16 v30, 0x31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(I[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 3705
    .end local v14           #mParams:[Ljava/lang/Object;
    .end local v25           #reconnectResult:Z
    .restart local v6       #checkNetType:I
    .restart local v9       #getConnectedWan:Z
    .restart local v11       #isWanType:Z
    .restart local v12       #lastWanGroupPriority:I
    .restart local v24       #priorityListIndex:I
    .restart local v29       #switchTo:Landroid/net/NetworkInfo;
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v30, v0

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_34

    .line 3706
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v30

    move/from16 v0, v30

    if-le v0, v12, :cond_34

    .line 3707
    move/from16 v26, v6

    goto/16 :goto_c

    .line 3713
    .end local v11           #isWanType:Z
    .end local v29           #switchTo:Landroid/net/NetworkInfo;
    :cond_3a
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto/16 :goto_c

    .line 3718
    .end local v6           #checkNetType:I
    :cond_3b
    if-ltz v26, :cond_3c

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v30, v0

    aget-object v17, v30, v26

    goto/16 :goto_5

    .line 3722
    :cond_3c
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 3725
    .end local v9           #getConnectedWan:Z
    .end local v12           #lastWanGroupPriority:I
    .end local v24           #priorityListIndex:I
    :cond_3d
    const-string v30, "ConnectivityService"

    const-string v31, "Network failover failing."

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 10
    .parameter "network"
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4808
    .local p3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 4809
    .local v0, changed:Z
    const/4 v6, 0x0

    .line 4810
    .local v6, last:I
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v8, :cond_1

    .line 4863
    :cond_0
    add-int/lit8 v3, v6, 0x1

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v3, v8, :cond_4

    .line 4864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4865
    .local v5, key:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "erasing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4866
    const/4 v0, 0x1

    .line 4870
    :try_start_0
    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4863
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4826
    .end local v3           #i:I
    .end local v5           #key:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4827
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v6, v6, 0x1

    .line 4828
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4829
    .restart local v5       #key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4833
    .local v7, value:Ljava/lang/String;
    if-nez v0, :cond_3

    :try_start_1
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 4848
    :cond_3
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding dns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4851
    const/4 v0, 0x1

    .line 4855
    :try_start_2
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 4857
    :catch_0
    move-exception v2

    .line 4858
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set dns failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 4837
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4838
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check dns failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4872
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #value:Ljava/lang/String;
    .restart local v3       #i:I
    :catch_2
    move-exception v2

    .line 4873
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "erase dns failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4877
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #key:Ljava/lang/String;
    :cond_4
    iput v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 4879
    if-eqz v0, :cond_5

    .line 4881
    :try_start_3
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p2, v9}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4882
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 4890
    :cond_5
    :goto_4
    :try_start_4
    const-string v8, "net.dns.search"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 4891
    const-string v8, "net.dns.search"

    invoke-static {v8, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4892
    const/4 v0, 0x1

    .line 4899
    :cond_6
    :goto_5
    return v0

    .line 4883
    :catch_3
    move-exception v2

    .line 4884
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception setting default dns interface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 4895
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 4896
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set net.dns.search failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z
    .locals 20
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"

    .prologue
    .line 4450
    const/16 v16, 0x0

    .line 4451
    .local v16, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4452
    .local v4, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v14, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v14}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4453
    .local v14, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_1

    .line 4455
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v14

    .line 4456
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 4463
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 4464
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4465
    .local v17, same:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    iget-object v0, v14, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 4466
    .local v13, r:Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4457
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v13           #r:Landroid/net/RouteInfo;
    .end local v17           #same:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_1
    if-eqz p1, :cond_0

    .line 4458
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4459
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 4468
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v17       #same:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 4469
    .restart local v13       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_4

    invoke-virtual {v13}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_3

    .line 4470
    :cond_4
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4471
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 4477
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v13           #r:Landroid/net/RouteInfo;
    .end local v17           #same:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_5
    iget-object v0, v14, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-nez v18, :cond_6

    iget-object v0, v14, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_a

    :cond_6
    const/4 v15, 0x1

    .line 4479
    .local v15, routesChanged:Z
    :goto_3
    iget-object v0, v14, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 4480
    .restart local v13       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_8

    invoke-virtual {v13}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_9

    .line 4481
    :cond_8
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4483
    :cond_9
    if-nez p3, :cond_7

    .line 4485
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_4

    .line 4477
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v13           #r:Landroid/net/RouteInfo;
    .end local v15           #routesChanged:Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_3

    .line 4489
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v15       #routesChanged:Z
    :cond_b
    iget-object v0, v14, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/RouteInfo;

    .line 4490
    .restart local v13       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_d

    invoke-virtual {v13}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_e

    .line 4491
    :cond_d
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_5

    .line 4494
    :cond_e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4504
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 4506
    .local v5, dst:Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet6Address;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 4507
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceNameV6()Ljava/lang/String;

    move-result-object v8

    .line 4512
    .local v8, ifaceName:Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 4513
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Removing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4515
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8, v13}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 4516
    :catch_0
    move-exception v6

    .line 4524
    .local v6, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception trying to remove a route: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4509
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #ifaceName:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ifaceName:Ljava/lang/String;
    goto :goto_6

    .line 4531
    .end local v5           #dst:Ljava/net/InetAddress;
    .end local v8           #ifaceName:Ljava/lang/String;
    .end local v13           #r:Landroid/net/RouteInfo;
    :cond_10
    if-nez p3, :cond_16

    .line 4533
    if-eqz v15, :cond_13

    .line 4535
    if-eqz p2, :cond_11

    .line 4536
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4537
    .local v12, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 4540
    .end local v12           #oldDns:Ljava/net/InetAddress;
    :cond_11
    if-eqz p1, :cond_16

    .line 4541
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 4544
    .local v10, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 4545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 4546
    .local v9, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 4547
    .local v11, ni:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_12

    if-eqz v11, :cond_12

    .line 4549
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 4550
    .local v3, defaultDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v3, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const-string v18, "cmwap"

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 4552
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Route not changed: default dnses = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " contains newDns= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Skipped."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4558
    .end local v3           #defaultDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v9           #lp:Landroid/net/LinkProperties;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto/16 :goto_8

    .line 4563
    .end local v10           #newDns:Ljava/net/InetAddress;
    :cond_13
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4564
    .restart local v12       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_9

    .line 4566
    .end local v12           #oldDns:Ljava/net/InetAddress;
    :cond_14
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 4569
    .restart local v10       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 4570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 4571
    .restart local v9       #lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 4572
    .restart local v11       #ni:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_15

    if-eqz v11, :cond_15

    .line 4574
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 4575
    .restart local v3       #defaultDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v3, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    const-string v18, "cmwap"

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 4577
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Route not changed: default dnses = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " contains newDns= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Skipped."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4583
    .end local v3           #defaultDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v9           #lp:Landroid/net/LinkProperties;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto/16 :goto_a

    .line 4587
    .end local v10           #newDns:Ljava/net/InetAddress;
    :cond_16
    return v15
.end method

.method private writePidDns(Ljava/util/Collection;I)Z
    .locals 8
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 4748
    .local p1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v5, 0x1

    .line 4749
    .local v5, j:I
    const/4 v0, 0x0

    .line 4750
    .local v0, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4751
    .local v1, dns:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 4755
    .local v2, dnsString:Ljava/lang/String;
    if-nez v0, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4756
    :cond_0
    const/4 v0, 0x1

    .line 4757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update dns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4764
    :catch_0
    move-exception v3

    .line 4765
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write pid dns failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4769
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #dnsString:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    return v0
.end method


# virtual methods
.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6627
    move v1, p1

    .line 6629
    .local v1, usedNetworkType:I
    if-nez p1, :cond_23

    .line 6630
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6632
    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v2, :cond_4

    .line 6634
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v0

    .line 6635
    .local v0, phoneType:I
    if-ne v0, v3, :cond_1

    .line 6636
    const/16 v1, 0x1d

    .line 6779
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 6637
    .restart local v0       #phoneType:I
    :cond_1
    if-ne v0, v5, :cond_2

    .line 6638
    const/16 v1, 0x1f

    goto :goto_0

    .line 6639
    :cond_2
    if-ne v0, v4, :cond_3

    .line 6640
    const/16 v1, 0x1b

    goto :goto_0

    .line 6642
    :cond_3
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any Phone Type!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6646
    .end local v0           #phoneType:I
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 6650
    :cond_5
    const-string v2, "enableSUPL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6651
    const/4 v1, 0x3

    goto :goto_0

    .line 6652
    :cond_6
    const-string v2, "enableDUN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "enableDUNAlways"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6654
    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    .line 6655
    :cond_8
    const-string v2, "enableHIPRI"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6656
    const/4 v1, 0x5

    goto :goto_0

    .line 6657
    :cond_9
    const-string v2, "enableFOTA"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6658
    const/16 v1, 0xa

    goto :goto_0

    .line 6659
    :cond_a
    const-string v2, "enableIMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6660
    const/16 v1, 0xb

    goto :goto_0

    .line 6661
    :cond_b
    const-string v2, "enableCBS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6662
    const/16 v1, 0xc

    goto :goto_0

    .line 6671
    :cond_c
    const-string v2, "enableWAPGATEWAY"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6672
    const/16 v1, 0xe

    goto :goto_0

    .line 6673
    :cond_d
    const-string v2, "enableHTTPPROXY"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6674
    const/16 v1, 0xf

    goto :goto_0

    .line 6675
    :cond_e
    const-string v2, "enableADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6677
    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v2, :cond_13

    .line 6680
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v0

    .line 6681
    .restart local v0       #phoneType:I
    if-ne v0, v3, :cond_10

    .line 6682
    const/16 v1, 0x23

    goto/16 :goto_0

    .line 6683
    :cond_10
    if-ne v0, v5, :cond_11

    .line 6684
    const/16 v1, 0x24

    goto/16 :goto_0

    .line 6685
    :cond_11
    if-ne v0, v4, :cond_12

    .line 6686
    const/16 v1, 0x22

    goto/16 :goto_0

    .line 6688
    :cond_12
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any Phone Type!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6692
    .end local v0           #phoneType:I
    :cond_13
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 6696
    :cond_14
    const-string v2, "enableINTERNET"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6697
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 6698
    :cond_15
    const-string v2, "enableMobileMarket"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 6699
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 6700
    :cond_16
    const-string v2, "enableCMMail"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 6701
    const/16 v1, 0x15

    goto/16 :goto_0

    .line 6702
    :cond_17
    const-string v2, "enableCMAIL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6703
    const/16 v1, 0x17

    goto/16 :goto_0

    .line 6704
    :cond_18
    const-string v2, "enableENTITLE"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6705
    const/16 v1, 0x18

    goto/16 :goto_0

    .line 6706
    :cond_19
    const-string v2, "enableOTASP"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6707
    const/16 v1, 0x19

    goto/16 :goto_0

    .line 6708
    :cond_1a
    const-string v2, "enableVerizon800"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6709
    const/16 v1, 0x20

    goto/16 :goto_0

    .line 6710
    :cond_1b
    const-string v2, "enableBIP"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6711
    const/16 v1, 0x21

    goto/16 :goto_0

    .line 6714
    :cond_1c
    const-string v2, "enableGSMMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 6715
    const/16 v1, 0x1d

    goto/16 :goto_0

    .line 6716
    :cond_1d
    const-string v2, "enableCDMAMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6717
    const/16 v1, 0x1b

    goto/16 :goto_0

    .line 6718
    :cond_1e
    const-string v2, "enableSUBGSMMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6719
    const/16 v1, 0x1f

    goto/16 :goto_0

    .line 6720
    :cond_1f
    const-string v2, "enableGSMADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6721
    const/16 v1, 0x23

    goto/16 :goto_0

    .line 6722
    :cond_20
    const-string v2, "enableCDMAADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 6723
    const/16 v1, 0x22

    goto/16 :goto_0

    .line 6724
    :cond_21
    const-string v2, "enableSUBGSMADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6725
    const/16 v1, 0x24

    goto/16 :goto_0

    .line 6729
    :cond_22
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any mobile netTracker!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6731
    :cond_23
    if-ne p1, v3, :cond_25

    .line 6732
    const-string v2, "p2p"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 6733
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 6735
    :cond_24
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any wifi netTracker!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6739
    :cond_25
    const/16 v2, 0x1c

    if-ne p1, v2, :cond_2a

    .line 6740
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 6741
    const/16 v1, 0x1d

    goto/16 :goto_0

    .line 6742
    :cond_26
    const-string v2, "enableGSMMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 6743
    const/16 v1, 0x1d

    goto/16 :goto_0

    .line 6744
    :cond_27
    const-string v2, "enableADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 6745
    const/16 v1, 0x23

    goto/16 :goto_0

    .line 6746
    :cond_28
    const-string v2, "enableGSMADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 6747
    const/16 v1, 0x23

    goto/16 :goto_0

    .line 6749
    :cond_29
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any gsm feature!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6751
    :cond_2a
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_2f

    .line 6752
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6753
    const/16 v1, 0x1f

    goto/16 :goto_0

    .line 6754
    :cond_2b
    const-string v2, "enableSUBGSMMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6755
    const/16 v1, 0x1f

    goto/16 :goto_0

    .line 6756
    :cond_2c
    const-string v2, "enableADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 6757
    const/16 v1, 0x24

    goto/16 :goto_0

    .line 6758
    :cond_2d
    const-string v2, "enableSUBGSMADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 6759
    const/16 v1, 0x24

    goto/16 :goto_0

    .line 6761
    :cond_2e
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any sub gsm feature!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6763
    :cond_2f
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_34

    .line 6764
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6765
    const/16 v1, 0x1b

    goto/16 :goto_0

    .line 6766
    :cond_30
    const-string v2, "enableCDMAMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 6767
    const/16 v1, 0x1b

    goto/16 :goto_0

    .line 6768
    :cond_31
    const-string v2, "enableADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 6769
    const/16 v1, 0x22

    goto/16 :goto_0

    .line 6770
    :cond_32
    const-string v2, "enableCDMAADMIN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 6771
    const/16 v1, 0x22

    goto/16 :goto_0

    .line 6773
    :cond_33
    const-string v2, "ConnectivityService"

    const-string v3, "Can\'t match any cdma feature!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6777
    :cond_34
    const-string v2, "ConnectivityService"

    const-string v3, "Unexpected network type"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 37
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "android.permission.DUMP"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_1

    .line 5029
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", uid="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5210
    :cond_0
    return-void

    .line 5034
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5035
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v6, arr$:[Landroid/net/NetworkStateTracker;
    array-length v15, v6

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v24, v6, v13

    .line 5036
    .local v24, nst:Landroid/net/NetworkStateTracker;
    if-eqz v24, :cond_4

    .line 5047
    invoke-interface/range {v24 .. v24}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v23

    .line 5048
    .local v23, ni:Landroid/net/NetworkInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v33

    if-nez v33, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v33

    sget-object v34, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 5049
    :cond_2
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Active network: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5053
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5055
    invoke-interface/range {v24 .. v24}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5056
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "teardown="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface/range {v24 .. v24}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", route private DNS="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface/range {v24 .. v24}, Landroid/net/NetworkStateTracker;->isPrivateDnsRouteSet()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5035
    .end local v23           #ni:Landroid/net/NetworkInfo;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 5063
    .end local v24           #nst:Landroid/net/NetworkStateTracker;
    :cond_5
    monitor-enter p0

    .line 5065
    :try_start_0
    const-string v33, "Network Requester Pids:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v6, arr$:[I
    array-length v15, v6

    const/4 v13, 0x0

    move v14, v13

    .end local v13           #i$:I
    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_7

    aget v20, v6, v14

    .line 5067
    .local v20, net:I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 5068
    .local v27, pidString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v33, v0

    aget-object v33, v33, v20

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14           #i$:I
    .local v13, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 5069
    .local v26, pid:Ljava/lang/Object;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 5071
    .end local v26           #pid:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    add-int/lit8 v13, v14, 0x1

    .local v13, i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    goto :goto_1

    .line 5073
    .end local v20           #net:I
    .end local v27           #pidString:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5075
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5078
    const-string v33, "FeatureUsers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v14           #i$:I
    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 5080
    .local v29, requester:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5075
    .end local v6           #arr$:[I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v29           #requester:Lcom/android/server/ConnectivityService$FeatureUser;
    :catchall_0
    move-exception v33

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v33

    .line 5082
    .restart local v6       #arr$:[I
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5084
    monitor-enter p0

    .line 5085
    :try_start_2
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NetworkTranstionWakeLock is currently "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v33

    if-eqz v33, :cond_a

    const-string v33, ""

    :goto_4
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "held."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5087
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "It was last requested for "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5089
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5093
    const-string v33, "Network Configuration:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v6, arr$:[Landroid/net/NetworkConfig;
    array-length v15, v6

    const/4 v13, 0x0

    .local v13, i$:I
    :goto_5
    if-ge v13, v15, :cond_b

    aget-object v19, v6, v13

    .line 5095
    .local v19, n:Landroid/net/NetworkConfig;
    if-eqz v19, :cond_9

    .line 5096
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 5085
    .end local v19           #n:Landroid/net/NetworkConfig;
    .local v6, arr$:[I
    .local v13, i$:Ljava/util/Iterator;
    :cond_a
    :try_start_3
    const-string v33, "not "

    goto :goto_4

    .line 5088
    :catchall_1
    move-exception v33

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v33

    .line 5099
    .local v6, arr$:[Landroid/net/NetworkConfig;
    .local v13, i$:I
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5101
    const-string v33, "Settings:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 5104
    .local v7, cr:Landroid/content/ContentResolver;
    const/16 v17, -0x1

    .line 5106
    .local v17, mobileDataEnable:I
    :try_start_4
    const-string v33, "mobile_data"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v17

    .line 5108
    :goto_6
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Mobile_Data "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " (database "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5111
    const/16 v18, -0x1

    .line 5113
    .local v18, mobileDataPhoneEnable:I
    :try_start_5
    const-string v33, "ext_mobile_data_phone_type"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v18

    .line 5115
    :goto_7
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Mobile_Data_Phone_Type "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " (database "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5116
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Dual_Phone_Enable "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-boolean v34, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Dual_GSM_Phone_Enable "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-boolean v34, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5118
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  is_DSDA_Project "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-boolean v34, Lcom/android/server/ConnectivityService;->isDSDAProject:Z

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5121
    const/4 v4, -0x1

    .line 5123
    .local v4, airplaneModeOn:I
    :try_start_6
    const-string v33, "airplane_mode_on"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    .line 5125
    :goto_8
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Airplane_Mode_On "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5127
    const/16 v21, -0x1

    .line 5129
    .local v21, netPref:I
    :try_start_7
    const-string v33, "network_preference"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v21

    .line 5131
    :goto_9
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  NetworkPreference "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " (database "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Default active="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", DNS="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultDnsNet:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5133
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  RoutePrivateToDefault "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPrivateRouteAsDefault:Ljava/lang/Integer;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5134
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Ready="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", pending="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5136
    const/16 v30, -0x1

    .line 5138
    .local v30, tetherEnabled:I
    :try_start_8
    const-string v33, "tether_supported"

    const/16 v34, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v30

    .line 5140
    :goto_a
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  TetherEnable "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5142
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5145
    const-string v33, "mPolicy:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5146
    const/16 v22, 0x0

    .line 5147
    .local v22, networkType:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    .local v6, arr$:[[Z
    array-length v15, v6

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v15, :cond_c

    aget-object v28, v6, v13

    .line 5148
    .local v28, policy:[Z
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  Net "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5149
    add-int/lit8 v22, v22, 0x1

    .line 5147
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 5151
    .end local v28           #policy:[Z
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5154
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 5155
    .local v8, dataTimeStamp:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v31

    .line 5158
    .local v31, timeStamp:J
    const/16 v16, 0x0

    .line 5159
    .local v16, mHistArray:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLogConnSrv:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 5161
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLogConnSrv:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v16

    .line 5165
    :goto_c
    :try_start_a
    monitor-exit v34
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 5166
    if-eqz v16, :cond_d

    .line 5167
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Change History: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x3cc

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " entries (current 0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5171
    move-object/from16 v6, v16

    .local v6, arr$:[Ljava/lang/Object;
    array-length v15, v6

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v15, :cond_e

    aget-object v25, v6, v13

    .local v25, oHist:Ljava/lang/Object;
    move-object/from16 v11, v25

    .line 5172
    check-cast v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;

    .line 5173
    .local v11, hist:Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
    invoke-virtual {v11}, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5174
    .local v5, argStr:Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    sub-long v33, v33, v31

    iget-wide v0, v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->timeStamp:J

    move-wide/from16 v35, v0

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5176
    .local v9, date:Ljava/util/Date;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  [0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-wide v0, v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->timeStamp:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "] "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "] "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5171
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 5162
    .end local v5           #argStr:Ljava/lang/String;
    .end local v9           #date:Ljava/util/Date;
    .end local v11           #hist:Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
    .end local v25           #oHist:Ljava/lang/Object;
    .local v6, arr$:[[Z
    :catch_0
    move-exception v10

    .line 5163
    .local v10, ex6:Ljava/lang/Exception;
    :try_start_b
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Log Exception : "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 5165
    .end local v10           #ex6:Ljava/lang/Exception;
    :catchall_2
    move-exception v33

    monitor-exit v34
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v33

    .line 5182
    :cond_d
    const-string v33, "Change History: 972 entries"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    .end local v6           #arr$:[[Z
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 5191
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5192
    const-string v33, "Inet condition reports:"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5193
    const/4 v12, 0x0

    .local v12, i:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v12, v0, :cond_0

    .line 5200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/LinkedList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;

    .line 5201
    .restart local v11       #hist:Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
    invoke-virtual {v11}, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5202
    .restart local v5       #argStr:Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    sub-long v33, v33, v31

    iget-wide v0, v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->timeStamp:J

    move-wide/from16 v35, v0

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5204
    .restart local v9       #date:Ljava/util/Date;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "  [0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-wide v0, v11, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->timeStamp:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "] "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "] "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5193
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 5139
    .end local v5           #argStr:Ljava/lang/String;
    .end local v8           #dataTimeStamp:Ljava/util/Date;
    .end local v9           #date:Ljava/util/Date;
    .end local v11           #hist:Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
    .end local v12           #i:I
    .end local v16           #mHistArray:[Ljava/lang/Object;
    .end local v22           #networkType:I
    .end local v31           #timeStamp:J
    .local v6, arr$:[Landroid/net/NetworkConfig;
    :catch_1
    move-exception v33

    goto/16 :goto_a

    .line 5130
    .end local v30           #tetherEnabled:I
    :catch_2
    move-exception v33

    goto/16 :goto_9

    .line 5124
    .end local v21           #netPref:I
    :catch_3
    move-exception v33

    goto/16 :goto_8

    .line 5114
    .end local v4           #airplaneModeOn:I
    :catch_4
    move-exception v33

    goto/16 :goto_7

    .line 5107
    .end local v18           #mobileDataPhoneEnable:I
    :catch_5
    move-exception v33

    goto/16 :goto_6
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "config"

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnState()[Lcom/htc/net/ApnState;
    .locals 20

    .prologue
    .line 6299
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 6300
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6302
    .local v5, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/net/ApnState;>;"
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x94

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xaf

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 6305
    :cond_0
    sget-boolean v17, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v17, :cond_1

    .line 6306
    sget-object v17, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getActiveApnState by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6308
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v7, arr$:[I
    array-length v12, v7

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v12, :cond_9

    aget v14, v7, v9

    .line 6309
    .local v14, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v17, v0

    aget-object v15, v17, v14

    .line 6310
    .local v15, nt:Landroid/net/NetworkStateTracker;
    invoke-static {v14}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v17

    if-eqz v17, :cond_8

    if-eqz v15, :cond_8

    .line 6311
    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 6312
    .local v10, info:Landroid/net/NetworkInfo;
    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 6313
    .local v13, lp:Landroid/net/LinkProperties;
    if-eqz v10, :cond_8

    if-eqz v13, :cond_8

    .line 6315
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 6316
    :cond_2
    const/4 v2, 0x1

    .line 6317
    .local v2, add:Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_5

    const-string v6, ""

    .line 6319
    .local v6, apnName:Ljava/lang/String;
    :goto_1
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/net/ApnState;

    .line 6320
    .local v4, apn:Lcom/htc/net/ApnState;
    iget-object v0, v4, Lcom/htc/net/ApnState;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 6321
    const/4 v2, 0x0

    .line 6325
    .end local v4           #apn:Lcom/htc/net/ApnState;
    :cond_4
    if-eqz v2, :cond_8

    .line 6326
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 6327
    .local v3, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-nez v3, :cond_6

    const/16 v16, 0x0

    .line 6328
    .local v16, size:I
    :goto_2
    new-instance v4, Lcom/htc/net/ApnState;

    invoke-direct {v4}, Lcom/htc/net/ApnState;-><init>()V

    .line 6330
    .restart local v4       #apn:Lcom/htc/net/ApnState;
    iput-object v6, v4, Lcom/htc/net/ApnState;->name:Ljava/lang/String;

    .line 6331
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    .line 6332
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 6333
    .local v11, ip:Ljava/net/InetAddress;
    iget-object v0, v4, Lcom/htc/net/ApnState;->ipaddress:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v16, v16, -0x1

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v16

    goto :goto_3

    .line 6317
    .end local v3           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #apn:Lcom/htc/net/ApnState;
    .end local v6           #apnName:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #ip:Ljava/net/InetAddress;
    .end local v16           #size:I
    .restart local v9       #i$:I
    :cond_5
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 6327
    .end local v9           #i$:I
    .restart local v3       #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6       #apnName:Ljava/lang/String;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v16

    goto :goto_2

    .line 6335
    .restart local v4       #apn:Lcom/htc/net/ApnState;
    .restart local v16       #size:I
    :cond_7
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6336
    sget-boolean v17, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v17, :cond_8

    .line 6337
    sget-object v17, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/net/ApnState;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6308
    .end local v2           #add:Z
    .end local v3           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #apn:Lcom/htc/net/ApnState;
    .end local v6           #apnName:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/net/NetworkInfo;
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v16           #size:I
    :cond_8
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 6345
    .end local v7           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v14           #netType:I
    .end local v15           #nt:Landroid/net/NetworkStateTracker;
    :cond_9
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/htc/net/ApnState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/htc/net/ApnState;

    return-object v17
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1323
    .local v0, uid:I
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 1324
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1332
    :goto_0
    return-object v1

    .line 1325
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 1329
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    .line 1332
    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "uid"

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1342
    sget-boolean v0, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v0, :cond_1

    .line 1343
    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getReplacedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1346
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 1554
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1558
    .local v1, token:J
    :try_start_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1559
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1561
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1567
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    return-object v3

    .line 1562
    :catch_0
    move-exception v3

    .line 1565
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1567
    .end local v0           #state:Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 9

    .prologue
    .line 1422
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1424
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1425
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1428
    :try_start_0
    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v7, :cond_1

    .line 1430
    :cond_0
    const/4 v7, 0x0

    invoke-direct {p0, v7, v6}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1431
    .local v3, replacedNetworkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    const/4 v7, 0x2

    invoke-direct {p0, v7, v6}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1433
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    const/16 v7, 0x10

    invoke-direct {p0, v7, v6}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1435
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    .end local v3           #replacedNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 1439
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_2

    .line 1446
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1447
    .restart local v3       #replacedNetworkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    .end local v3           #replacedNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkInfo;

    return-object v7

    .line 1451
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 12

    .prologue
    .line 1517
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1519
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1520
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1521
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 1522
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 1531
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1532
    .local v3, netType:I
    new-instance v7, Landroid/net/NetworkState;

    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v10

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getLinkCapabilities(I)Landroid/net/LinkCapabilities;

    move-result-object v11

    invoke-direct {v7, v9, v10, v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v3           #netType:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 1537
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 6062
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 6064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 15
    .parameter "receivedNetworkInfo"

    .prologue
    .line 6233
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 6234
    if-nez p1, :cond_1

    .line 6235
    const/4 v5, 0x0

    .line 6291
    :cond_0
    :goto_0
    return-object v5

    .line 6238
    :cond_1
    move-object/from16 v5, p1

    .line 6239
    .local v5, interestedNetInfo:Landroid/net/NetworkInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    .line 6240
    .local v9, receivedNetworkType:I
    invoke-static {v9}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6241
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v8

    .line 6242
    .local v8, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v11

    .line 6244
    .local v11, uid:I
    const/4 v6, 0x0

    .line 6245
    .local v6, mRequestedFeatures:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 6247
    .local v7, mRequestedType:[I
    const/4 v3, 0x0

    .line 6248
    .local v3, found:Z
    monitor-enter p0

    .line 6249
    :try_start_0
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v6, v12, [Ljava/lang/String;

    .line 6250
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v7, v12, [I

    .line 6251
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 6252
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 6253
    .local v10, u:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v11, v12, :cond_2

    iget v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v8, v12, :cond_2

    iget v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mConvertedType:I

    if-ne v9, v12, :cond_2

    .line 6255
    const/4 v3, 0x1

    .line 6256
    iget-object v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    :goto_2
    aput-object v12, v6, v4

    .line 6257
    iget v12, v10, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    aput v12, v7, v4

    .line 6251
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6256
    :cond_3
    new-instance v12, Ljava/lang/String;

    const-string v13, ""

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 6260
    .end local v4           #i:I
    .end local v10           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v4       #i:I
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6261
    const/4 v0, -0x1

    .line 6262
    .local v0, apRequestedNetType:I
    if-eqz v3, :cond_6

    .line 6264
    const/4 v3, 0x0

    .line 6265
    const/4 v4, 0x0

    :goto_3
    if-gez v0, :cond_6

    array-length v12, v6

    if-ge v4, v12, :cond_6

    .line 6266
    aget-object v12, v6, v4

    if-eqz v12, :cond_5

    .line 6268
    aget v12, v7, v4

    aget-object v13, v6, v4

    invoke-virtual {p0, v12, v13}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v2

    .line 6270
    .local v2, featureType:I
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result v1

    .line 6271
    .local v1, convertedType:I
    if-ne v1, v9, :cond_5

    .line 6272
    move v0, v2

    .line 6265
    .end local v1           #convertedType:I
    .end local v2           #featureType:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6277
    :cond_6
    if-ltz v0, :cond_0

    if-eq v0, v9, :cond_0

    .line 6280
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 6282
    const/16 v12, 0x13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 6286
    sget-boolean v12, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v12, :cond_0

    .line 6287
    sget-object v12, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 5739
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5741
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5742
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 5744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .prologue
    .line 6869
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 4
    .parameter "networkType"

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1488
    move v0, p1

    .line 1489
    .local v0, replacedNetworkType:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-eq v2, v3, :cond_0

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v0

    .line 1492
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, v0

    .line 1494
    .local v1, t:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1497
    .end local v1           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2687
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2688
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2697
    .local v0, retVal:Z
    :goto_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2698
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; and in database is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    return v1

    .line 2688
    .end local v0           #retVal:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataPhoneType()I
    .locals 5

    .prologue
    .line 2901
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2902
    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v2, :cond_3

    .line 2903
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneTypeSettings()I

    move-result v0

    .line 2905
    .local v0, retVal:I
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_1

    .line 2906
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataPhoneType returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; and the settings in provider is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    .line 2915
    .end local v0           #retVal:I
    :cond_2
    :goto_0
    return v1

    .line 2910
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 2912
    .local v1, type:I
    sget-boolean v2, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 2913
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataPhoneType returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; dualPhone was not enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1356
    .local v0, uid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkNameServers(I)[Ljava/lang/String;
    .locals 10
    .parameter "networkType"

    .prologue
    .line 6155
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 6156
    move v7, p1

    .line 6157
    .local v7, usedNetworkType:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v8

    iget v9, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-eq v8, v9, :cond_0

    .line 6158
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->queryNetworkTypeConvert(I)I

    move-result v7

    .line 6160
    :cond_0
    invoke-static {v7}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6161
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v7

    if-eqz v8, :cond_3

    .line 6162
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v7

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 6163
    .local v5, ni:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v8, v9, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v8, v9, :cond_3

    .line 6166
    :cond_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v7

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 6167
    .local v6, p:Landroid/net/LinkProperties;
    if-eqz v6, :cond_3

    .line 6168
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 6169
    .local v1, dnsList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 6170
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 6171
    .local v2, dnsLists:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 6172
    .local v3, i:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 6173
    .local v0, dns:Ljava/net/InetAddress;
    if-eqz v0, :cond_2

    .line 6174
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    .line 6176
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6184
    .end local v0           #dns:Ljava/net/InetAddress;
    .end local v1           #dnsList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2           #dnsLists:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ni:Landroid/net/NetworkInfo;
    .end local v6           #p:Landroid/net/LinkProperties;
    :cond_3
    const/4 v2, 0x0

    :cond_4
    return-object v2
.end method

.method public getNetworkPreference()I
    .locals 4

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1056
    monitor-enter p0

    .line 1057
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 1058
    .local v0, preference:I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1061
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkPreference returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; and in database is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    return v0

    .line 1058
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPhoneMobileDataEnabled(I)Z
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 2885
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2886
    const/4 v0, 0x0

    .line 2887
    .local v0, retVal:Z
    packed-switch p1, :pswitch_data_0

    .line 2894
    :goto_0
    :pswitch_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 2895
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneMobileDataEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_0
    return v0

    .line 2891
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPolicyEnable(II)Z
    .locals 4
    .parameter "networkType"
    .parameter "slot"

    .prologue
    .line 3138
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "ConnectivityService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    move v0, p1

    .line 3141
    .local v0, originalType:I
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 3142
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result p1

    .line 3145
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ltz p2, :cond_3

    const/4 v1, 0x5

    if-ge p2, v1, :cond_3

    .line 3146
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 3147
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy of net "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v1, v1, p1

    aget-boolean v1, v1, p2

    .line 3152
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 4

    .prologue
    .line 5996
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6003
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v0, :cond_0

    .line 6004
    const/4 v0, 0x0

    monitor-exit v1

    .line 6010
    :goto_0
    return-object v0

    .line 6006
    :cond_0
    sget-boolean v0, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v0, :cond_1

    .line 6007
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get mDefaultProxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6010
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    goto :goto_0

    .line 6013
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5786
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5787
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5788
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 5790
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5816
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5817
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5750
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5751
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5752
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 5754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5759
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5767
    :try_start_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 5768
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTetherableWifiRegexs]Concurrent Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTetheringSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5773
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 5780
    :goto_0
    return-object v1

    .line 5775
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5778
    :catch_0
    move-exception v0

    .line 5779
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTetherableWifiRegexs] error to getTetherableWifiRegexs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5827
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5828
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5821
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5822
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5832
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5833
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "register"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    .line 7658
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v0, :cond_1

    .line 7659
    const/4 v7, 0x1

    .line 7660
    .local v7, result:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v6

    .line 7662
    .local v6, pid:I
    const/16 v0, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 7669
    iget v0, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-ne v6, v0, :cond_0

    .line 7670
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/Tethering;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 7675
    .end local v6           #pid:I
    .end local v7           #result:I
    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public htcRequestPermittedTether(IILjava/lang/String;)I
    .locals 9
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "iface"

    .prologue
    .line 7620
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    .line 7621
    .local v5, uid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 7622
    .local v2, pid:I
    iget v6, p0, Lcom/android/server/ConnectivityService;->mConnectivityServicePid:I

    if-ne v2, v6, :cond_0

    const/4 v0, 0x1

    .line 7624
    .local v0, isThroughSystem:Z
    :goto_0
    const/4 v4, 0x0

    .line 7625
    .local v4, requestType:Ljava/lang/Object;
    rsub-int/lit8 v3, p1, -0x2

    .line 7627
    .local v3, requestId:I
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->htcPermittedTetherCallingFrom(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 7628
    .local v1, originCallFrom:Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 7629
    if-eqz v0, :cond_1

    .line 7630
    move-object v4, p3

    .line 7646
    .end local v4           #requestType:Ljava/lang/Object;
    :goto_1
    const/16 v6, 0x28

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 7654
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v6, v1, v0, v4}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    move-result v6

    return v6

    .line 7622
    .end local v0           #isThroughSystem:Z
    .end local v1           #originCallFrom:Ljava/lang/Boolean;
    .end local v3           #requestId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7633
    .restart local v0       #isThroughSystem:Z
    .restart local v1       #originCallFrom:Ljava/lang/Boolean;
    .restart local v3       #requestId:I
    .restart local v4       #requestType:Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #requestType:Ljava/lang/Object;
    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .local v4, requestType:Ljava/lang/Integer;
    goto :goto_1

    .line 7637
    .local v4, requestType:Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_3

    .line 7638
    move-object v4, p3

    .local v4, requestType:Ljava/lang/String;
    goto :goto_1

    .line 7641
    .local v4, requestType:Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #requestType:Ljava/lang/Object;
    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .local v4, requestType:Ljava/lang/Integer;
    goto :goto_1
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 7680
    sget-boolean v2, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_0

    .line 7681
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 7682
    .local v1, uid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 7683
    .local v0, pid:I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.phone"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/server/ConnectivityService;->callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7685
    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 7689
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7690
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Tethering;->htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V

    .line 7694
    .end local v0           #pid:I
    .end local v1           #uid:I
    :cond_0
    return-void
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1576
    .local v0, token:J
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1576
    return v2

    .line 1578
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1458
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5840
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5847
    const/4 v0, 0x1

    .line 5849
    .local v0, defaultVal:I
    :try_start_0
    const-string v5, "ro.tether.denied"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 5854
    :goto_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tether_supported"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 5856
    .local v2, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v5, :cond_2

    :goto_2
    return v4

    .end local v2           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v4

    .line 5849
    goto :goto_0

    .line 5850
    :catch_0
    move-exception v1

    .line 5851
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get ro.tether.denied failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 5854
    goto :goto_1

    .restart local v2       #tetherEnabledInSettings:Z
    :cond_2
    move v4, v3

    .line 5856
    goto :goto_2
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    .line 6824
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-ne v4, v5, :cond_1

    .line 6825
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 6835
    :goto_0
    return v3

    .line 6826
    :cond_0
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v0

    .line 6827
    .local v0, dm:Lcom/android/server/DeviceManager3LMService;
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceManager3LMService;->isPackage3LM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6829
    .local v1, ident:J
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 6830
    .local v3, result:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6835
    .end local v0           #dm:Lcom/android/server/DeviceManager3LMService;
    .end local v1           #ident:J
    .end local v3           #result:Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .parameter "socket"

    .prologue
    .line 6798
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 6799
    .local v0, type:I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6800
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6801
    const/4 v1, 0x1

    .line 6807
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 6812
    .end local v0           #type:I
    :goto_0
    return v1

    .line 6806
    :catchall_0
    move-exception v1

    .line 6807
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6806
    :goto_1
    throw v1

    .line 6803
    :catch_0
    move-exception v1

    .line 6807
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6812
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 6808
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .restart local v0       #type:I
    :catch_3
    move-exception v2

    goto :goto_0

    .line 6807
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public reportInetCondition(II)V
    .locals 4
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 5892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportInetCondition for net "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5897
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR"

    const-string v3, "ConnectivityService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reports inet is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v1, 0x32

    if-le p2, v1, :cond_0

    const-string v1, "connected"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "network Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5919
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/LinkedList;

    const/16 v2, 0xf

    const/16 v3, 0x35

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(Ljava/util/LinkedList;IILjava/lang/String;)V

    .line 5922
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5924
    return-void

    .line 5916
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    const-string v1, "disconnected"

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 5
    .parameter "forWhom"

    .prologue
    .line 5864
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5865
    monitor-enter p0

    .line 5866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 5880
    :goto_0
    return-void

    .line 5869
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNetworkTransitionWakelock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5872
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 5873
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5874
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 5875
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5876
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 5875
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestRouteToHost(II)Z
    .locals 3
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 2387
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2389
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 2391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "routing address is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2393
    const/4 v1, 0x0

    .line 2396
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 12
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2410
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2411
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2414
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2416
    const/4 v4, 0x0

    .line 2509
    :goto_0
    return v4

    .line 2429
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->predictRequestedNetworkType(I)I

    move-result v8

    .line 2430
    .local v8, usedNetworkType:I
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v9, v8

    .line 2431
    .local v7, tracker:Landroid/net/NetworkStateTracker;
    if-nez v7, :cond_4

    const/4 v3, 0x0

    .line 2433
    .local v3, ni:Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_3

    :cond_2
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2448
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHost on down network ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - dropped : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2451
    const/16 v10, 0x9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "false"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v3, :cond_6

    const-string v9, "null"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "false"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v10, v9}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 2461
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2431
    .end local v3           #ni:Landroid/net/NetworkInfo;
    :cond_4
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    goto/16 :goto_1

    .line 2451
    .restart local v3       #ni:Landroid/net/NetworkInfo;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_5

    .line 2463
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2465
    .local v5, token:J
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 2466
    .local v0, addr:Ljava/net/InetAddress;
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 2479
    .local v2, lp:Landroid/net/LinkProperties;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2482
    const/4 v4, 0x0

    .line 2494
    .local v4, result:Z
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    move-result v4

    .line 2496
    const/16 v9, 0x9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2507
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2504
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #lp:Landroid/net/LinkProperties;
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 2505
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHostAddress got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2507
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2509
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2507
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v9

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public setDataDependency(IZ)V
    .locals 5
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 2706
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2710
    move v0, p1

    .line 2711
    .local v0, originalType:I
    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v1, :cond_1

    .line 2712
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result p1

    .line 2714
    :cond_1
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 2715
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataDependency("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_2
    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 2723
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2725
    return-void

    .line 2723
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 6
    .parameter "proxyProperties"

    .prologue
    .line 6017
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 6018
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6019
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v4, :cond_1

    monitor-exit v5

    .line 6045
    :cond_0
    :goto_0
    return-void

    .line 6020
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 6039
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6021
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 6023
    :cond_3
    const-string v1, ""

    .line 6024
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 6025
    .local v2, port:I
    const-string v0, ""

    .line 6026
    .local v0, exclList:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6027
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 6028
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 6029
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    .line 6030
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 6034
    :goto_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6035
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "global_http_proxy_host"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6036
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6037
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6039
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6041
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v4, :cond_0

    .line 6042
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_0

    .line 6032
    .end local v3           #res:Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setMobileDataEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 2796
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2805
    monitor-enter p0

    .line 2806
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mMobileSettings:Z

    .line 2807
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "mobile_data"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2815
    .local v0, setting:I
    const/16 v1, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 2818
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6b

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2820
    return-void

    .line 2807
    .end local v0           #setting:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0       #setting:I
    :cond_0
    move v1, v2

    .line 2818
    goto :goto_0
.end method

.method public declared-synchronized setMobileDataPhoneType(I)Z
    .locals 6
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2938
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2939
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileDataPhoneType to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-eqz v3, :cond_0

    .line 2942
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    .line 2943
    const-string v2, "ConnectivityService"

    const-string v3, "invalid phone type"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2964
    :goto_0
    monitor-exit p0

    return v1

    .line 2946
    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v3, :cond_1

    .line 2947
    if-eq p1, v2, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    .line 2948
    const-string v2, "ConnectivityService"

    const-string v3, "invalid phone type"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2938
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2952
    :cond_1
    :try_start_2
    const-string v2, "ConnectivityService"

    const-string v3, "dualPhone was not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2957
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneTypeSettings()I

    move-result v0

    .line 2958
    .local v0, setting:I
    const/16 v1, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 2961
    iput p1, p0, Lcom/android/server/ConnectivityService;->mMobilePhoneSettings:I

    .line 2962
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 2964
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkPreference("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1029
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 1051
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 3069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->setPolicyEnable(IZI)V

    .line 3070
    return-void
.end method

.method public setPolicyEnable(IZI)V
    .locals 11
    .parameter "networkType"
    .parameter "policy"
    .parameter "slot"

    .prologue
    .line 3076
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v9, "ConnectivityService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    move v5, p1

    .line 3082
    .local v5, originalType:I
    const/4 v4, 0x0

    .line 3083
    .local v4, originalPolicy:Z
    const/4 v1, 0x1

    .line 3084
    .local v1, enabled:Z
    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v7, :cond_1

    .line 3085
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result p1

    .line 3087
    :cond_1
    sget-boolean v7, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v7, :cond_2

    .line 3088
    sget-object v7, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPolicyEnable( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_2
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ltz p3, :cond_8

    const/4 v7, 0x5

    if-ge p3, v7, :cond_8

    .line 3092
    sget-boolean v7, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v7, :cond_3

    .line 3093
    sget-object v7, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "policy for net "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v9, v9, p1

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->logEnableStatus([Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v7, v7, p1

    aget-boolean v7, v7, p3

    if-eq v7, p2, :cond_5

    .line 3097
    const/16 v7, 0x15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 3099
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v7, v7, p1

    aput-boolean p2, v7, p3

    .line 3101
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mPolicy:[[Z

    aget-object v0, v7, p1

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-boolean v6, v0, v2

    .line 3102
    .local v6, p:Z
    if-nez v6, :cond_6

    .line 3103
    const/4 v1, 0x0

    .line 3108
    .end local v6           #p:Z
    :cond_4
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x71

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v10, p1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3116
    .end local v0           #arr$:[Z
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    :goto_2
    return-void

    .line 3101
    .restart local v0       #arr$:[Z
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #p:Z
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3108
    .end local v6           #p:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 3113
    .end local v0           #arr$:[Z
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    sget-object v7, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    const-string v8, "incorrect networkType or slot"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setRadio(IZ)Z
    .locals 5
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    .line 1613
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1614
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1627
    :cond_0
    :goto_0
    return v1

    .line 1617
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1620
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_2

    .line 1621
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 1627
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 8
    .parameter "turnOn"

    .prologue
    .line 1594
    const/4 v3, 0x1

    .line 1595
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1596
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 1599
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    .line 1600
    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 1607
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 1596
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1609
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_3
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 3
    .parameter "enable"

    .prologue
    .line 5795
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 5798
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    .line 5799
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5801
    const/4 v0, 0x2

    .line 5809
    :goto_0
    return v0

    .line 5806
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5807
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    goto :goto_0

    .line 5809
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 6858
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 6859
    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 29
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1740
    const-wide/16 v21, 0x0

    .line 1742
    .local v21, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature for net "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1759
    :try_start_0
    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualPhoneEnable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v3, :cond_2

    .line 1760
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1761
    const-string v3, "ConnectivityService"

    const-string v4, "network is not valid"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1762
    const/4 v3, 0x3

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .local v12, execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_20

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2086
    :goto_1
    return v3

    .line 1763
    .end local v12           #execTime:J
    :cond_1
    if-eqz p1, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    if-nez v3, :cond_4

    .line 1764
    const-string v3, "ConnectivityService"

    const-string v4, "network config is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1765
    const/4 v3, 0x3

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_21

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1769
    .end local v12           #execTime:J
    :cond_2
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_4

    .line 1771
    :cond_3
    const/4 v3, 0x3

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_2d

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1788
    .end local v12           #execTime:J
    :cond_4
    const/4 v2, 0x0

    .line 1789
    .local v2, f:Lcom/android/server/ConnectivityService$FeatureUser;
    :try_start_3
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v14

    .line 1790
    .local v14, featureNetworkType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1792
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1805
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result v7

    .line 1806
    .local v7, usedNetworkType:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/ConnectivityService;->isBlockedBySomeReason(II)Ljava/lang/String;

    move-result-object v10

    .line 1807
    .local v10, blockedReason:Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 1808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temporarily not available - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1809
    const/4 v3, 0x2

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_22

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1811
    .end local v12           #execTime:J
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xaf

    if-eq v3, v4, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    .line 1816
    :cond_7
    sparse-switch v7, :sswitch_data_0

    .line 1839
    :cond_8
    new-instance v2, Lcom/android/server/ConnectivityService$FeatureUser;

    .end local v2           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;I)V

    .line 1843
    .restart local v2       #f:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v18

    .line 1845
    .local v18, networkMetered:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1846
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v27

    .line 1847
    .local v27, uidRules:I
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1848
    if-eqz v18, :cond_a

    and-int/lit8 v3, v27, 0x1

    if-eqz v3, :cond_a

    .line 1849
    const/4 v3, 0x3

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_26

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1818
    .end local v12           #execTime:J
    .end local v18           #networkMetered:Z
    .end local v27           #uidRules:I
    :sswitch_0
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1819
    .local v8, active_info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_8

    .line 1820
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    .line 1821
    .local v25, type:I
    const/4 v3, 0x6

    move/from16 v0, v25

    if-ne v0, v3, :cond_8

    .line 1822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " replaced by active network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1823
    const/4 v3, 0x0

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_25

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1828
    .end local v8           #active_info:Landroid/net/NetworkInfo;
    .end local v12           #execTime:J
    .end local v25           #type:I
    :sswitch_1
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1829
    .restart local v8       #active_info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_9

    .line 1830
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    .line 1831
    .restart local v25       #type:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " replaced by active network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1832
    const/4 v3, 0x0

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_23

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1834
    .end local v12           #execTime:J
    .end local v25           #type:I
    :cond_9
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temporarily not available - no active network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1835
    const/4 v3, 0x2

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_24

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1847
    .end local v8           #active_info:Landroid/net/NetworkInfo;
    .end local v12           #execTime:J
    .restart local v18       #networkMetered:Z
    :catchall_0
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2088
    .end local v2           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7           #usedNetworkType:I
    .end local v10           #blockedReason:Ljava/lang/String;
    .end local v14           #featureNetworkType:I
    .end local v18           #networkMetered:Z
    :catchall_1
    move-exception v3

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_1f

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2088
    :goto_2
    throw v3

    .line 1852
    .end local v12           #execTime:J
    .restart local v2       #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v7       #usedNetworkType:I
    .restart local v10       #blockedReason:Ljava/lang/String;
    .restart local v14       #featureNetworkType:I
    .restart local v18       #networkMetered:Z
    .restart local v27       #uidRules:I
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v17, v3, v7

    .line 1853
    .local v17, network:Landroid/net/NetworkStateTracker;
    if-eqz v17, :cond_1e

    .line 1854
    new-instance v11, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1861
    .local v11, currentPid:Ljava/lang/Integer;
    move/from16 v0, p1

    if-eq v14, v0, :cond_1c

    .line 1863
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    .line 1867
    .local v19, ni:Landroid/net/NetworkInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataPhoneType()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->getMobileDataType(I)I

    move-result v16

    .line 1868
    .local v16, mobileType:I
    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v3, :cond_15

    const/16 v3, 0x1c

    move/from16 v0, v16

    if-ne v0, v3, :cond_b

    const/16 v3, 0x1f

    if-eq v7, v3, :cond_c

    :cond_b
    const/16 v3, 0x1e

    move/from16 v0, v16

    if-ne v0, v3, :cond_15

    const/16 v3, 0x1d

    if-ne v7, v3, :cond_15

    .line 1871
    :cond_c
    sget-boolean v3, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v3, :cond_d

    .line 1872
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Customize for DualGSMPhone design mobileType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "usedNetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v20

    .line 1923
    .local v20, restoreTimer:I
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1924
    const/4 v9, 0x1

    .line 1925
    .local v9, addToList:Z
    if-gez v20, :cond_f

    .line 1928
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1929
    .local v26, u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1931
    const/4 v9, 0x0

    .line 1937
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v26           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_f
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v3, v7

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v3, v7

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1942
    :cond_11
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1944
    invoke-static {v7}, Lcom/android/server/ConnectivityService$Injector;->startUsingNetworkFeature(I)V

    if-ltz v20, :cond_12

    .line 1946
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v20

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1960
    :cond_12
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_18

    :cond_13
    invoke-interface/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1962
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_17

    .line 1964
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-wide v23

    .line 1976
    .local v23, token:J
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(Landroid/net/NetworkInfo;)V

    .line 1977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already active - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1979
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1989
    :try_start_f
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1991
    const/4 v3, 0x0

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_27

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1876
    .end local v9           #addToList:Z
    .end local v12           #execTime:J
    .end local v20           #restoreTimer:I
    .end local v23           #token:J
    :cond_15
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1886
    const-string v3, "enableDUNAlways"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    const/16 v3, 0x10

    if-eq v7, v3, :cond_16

    .line 1889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network not available ni="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1892
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1900
    const/4 v3, 0x2

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_2a

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1904
    .end local v12           #execTime:J
    :cond_16
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network not available, but try anyway ni="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_3

    .line 1942
    .restart local v9       #addToList:Z
    .restart local v20       #restoreTimer:I
    :catchall_2
    move-exception v3

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v3

    .line 1989
    .restart local v23       #token:J
    :catchall_3
    move-exception v3

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1999
    .end local v23           #token:J
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already connecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2001
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2010
    const/4 v3, 0x1

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_28

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2029
    .end local v12           #execTime:J
    :cond_18
    :try_start_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->getGroupPriority(I)I

    move-result v4

    if-lt v3, v4, :cond_1b

    .line 2030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnecting to special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x73

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    sget-boolean v3, Lcom/android/server/ConnectivityService;->mDualGSMPhoneEnable:Z

    if-eqz v3, :cond_19

    .line 2036
    const/16 v3, 0x1c

    move/from16 v0, v16

    if-ne v0, v3, :cond_1a

    const/16 v3, 0x1f

    if-ne v7, v3, :cond_1a

    .line 2039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x77

    const/16 v6, 0x1c

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2053
    :cond_19
    :goto_4
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2062
    const/4 v3, 0x1

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_29

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2041
    .end local v12           #execTime:J
    :cond_1a
    const/16 v3, 0x1e

    move/from16 v0, v16

    if-ne v0, v3, :cond_19

    const/16 v3, 0x1d

    if-ne v7, v3, :cond_19

    .line 2044
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x77

    const/16 v6, 0x1e

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 2050
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for reconnecting to special network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2065
    .end local v9           #addToList:Z
    .end local v16           #mobileType:I
    .end local v19           #ni:Landroid/net/NetworkInfo;
    .end local v20           #restoreTimer:I
    :cond_1c
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2066
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v3, v7

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v3, v7

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    :cond_1d
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 2075
    const/4 v3, 0x4

    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 2083
    const/4 v3, -0x1

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_2b

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2071
    .end local v12           #execTime:J
    :catchall_4
    move-exception v3

    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 2086
    .end local v11           #currentPid:Ljava/lang/Integer;
    :cond_1e
    const/4 v3, 0x2

    .line 2089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v4, v21

    .line 2090
    .restart local v12       #execTime:J
    const-wide/16 v4, 0xfa

    cmp-long v4, v12, v4

    if-lez v4, :cond_2c

    .line 2091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2093
    .end local v2           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7           #usedNetworkType:I
    .end local v10           #blockedReason:Ljava/lang/String;
    .end local v14           #featureNetworkType:I
    .end local v17           #network:Landroid/net/NetworkStateTracker;
    .end local v18           #networkMetered:Z
    .end local v27           #uidRules:I
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .restart local v2       #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v7       #usedNetworkType:I
    .restart local v10       #blockedReason:Ljava/lang/String;
    .restart local v14       #featureNetworkType:I
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .restart local v8       #active_info:Landroid/net/NetworkInfo;
    .restart local v25       #type:I
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .end local v25           #type:I
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .restart local v25       #type:I
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v8           #active_info:Landroid/net/NetworkInfo;
    .end local v25           #type:I
    .restart local v18       #networkMetered:Z
    .restart local v27       #uidRules:I
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .restart local v9       #addToList:Z
    .restart local v11       #currentPid:Ljava/lang/Integer;
    .restart local v16       #mobileType:I
    .restart local v17       #network:Landroid/net/NetworkStateTracker;
    .restart local v19       #ni:Landroid/net/NetworkInfo;
    .restart local v20       #restoreTimer:I
    .restart local v23       #token:J
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v23           #token:J
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v9           #addToList:Z
    .end local v20           #restoreTimer:I
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v16           #mobileType:I
    .end local v19           #ni:Landroid/net/NetworkInfo;
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v11           #currentPid:Ljava/lang/Integer;
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .end local v2           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7           #usedNetworkType:I
    .end local v10           #blockedReason:Ljava/lang/String;
    .end local v14           #featureNetworkType:I
    .end local v17           #network:Landroid/net/NetworkStateTracker;
    .end local v18           #networkMetered:Z
    .end local v27           #uidRules:I
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1816
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 12
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v9, 0x1

    .line 2101
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2103
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v4

    .line 2104
    .local v4, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v6

    .line 2106
    .local v6, uid:I
    const/4 v5, 0x0

    .line 2107
    .local v5, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v2, 0x0

    .line 2112
    .local v2, found:Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v1

    .line 2113
    .local v1, featureNetworkType:I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->requestNetworkTypeConvert(I)I

    move-result v7

    .line 2115
    .local v7, usedNetworkType:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature for net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2119
    monitor-enter p0

    .line 2120
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2121
    .local v8, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v8, v4, v6, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2122
    move-object v5, v8

    .line 2123
    const/4 v2, 0x1

    .line 2127
    .end local v8           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2128
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 2134
    invoke-direct {p0, p1, v7}, Lcom/android/server/ConnectivityService;->isBlockedForBothStartStopBySomeReason(II)Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, blockedReason:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stop special network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " temporarily not available - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2137
    const/4 v9, -0x1

    .line 2151
    .end local v0           #blockedReason:Ljava/lang/String;
    :goto_0
    return v9

    .line 2127
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2140
    .restart local v0       #blockedReason:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v5, v9}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v9

    goto :goto_0

    .line 2149
    .end local v0           #blockedReason:Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stop special network "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ignoring - not a live request"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3967
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3972
    :goto_0
    return-void

    .line 3970
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleSystemReady()V

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 4
    .parameter "iface"

    .prologue
    .line 5672
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 5683
    :try_start_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 5684
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tether]Concurrent Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTetheringSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5689
    :cond_1
    const/16 v1, 0xe

    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 5692
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5699
    :goto_0
    return v1

    .line 5694
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 5697
    :catch_0
    move-exception v0

    .line 5698
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tether] error to tether:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 4
    .parameter "iface"

    .prologue
    .line 5706
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 5717
    :try_start_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 5718
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG_DETAIL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[untether]Concurrent Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTetheringSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5722
    :cond_1
    const/16 v1, 0xf

    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->addToHtcConnSrvHistory(ILjava/lang/String;)V

    .line 5725
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5732
    :goto_0
    return v1

    .line 5727
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 5730
    :catch_0
    move-exception v0

    .line 5731
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tether] error to untether:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 5
    .parameter "nt"

    .prologue
    .line 4597
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v2

    .line 4604
    .local v2, key:Ljava/lang/String;
    const-string v0, ""

    .line 4606
    .local v0, bufferSizes:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4612
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 4613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in system properties. Using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4616
    const-string v2, "net.tcp.buffersize.default"

    .line 4620
    :try_start_1
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 4629
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting TCP values: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] which comes from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4634
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 4636
    :cond_1
    return-void

    .line 4607
    :catch_0
    move-exception v1

    .line 4608
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get buffer size failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4622
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4623
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get buffer size failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method
