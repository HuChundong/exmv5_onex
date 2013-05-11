.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$18;,
        Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CW_EXPIRED_REREGISTER:Ljava/lang/String; = "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final ACTION_DHCP_LEASE_RENEW:Ljava/lang/String; = "com.android.server.WifiManager.action.DHCP_LEASE_RENEW"

.field private static final ACTION_UPDATE_WIFI_STATE:Ljava/lang/String; = "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field private static final ACTION_WIRELESS_SLEEP_TIME_END:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_END"

.field private static final ACTION_WIRELESS_SLEEP_TIME_START:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_START"

.field private static final ALWAYS_REMINDER:I = 0x3

.field private static final AP_MODE:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DBG:Z = true

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DRIVER_PHONE_CALL_COME:I = 0x1

.field private static final DRIVER_PHONE_CALL_END:I = 0x0

.field private static final DRIVER_POWER_MODE_BROWSER_ACTIVE:I = 0xb

.field private static final DRIVER_POWER_MODE_BROWSER_AUTO:I = 0xa

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_START:I = 0x1f

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_STOP:I = 0x1e

.field private static final DRIVER_POWER_MODE_WIFILOCK_ACQUIRE:I = 0x58

.field private static final DRIVER_POWER_MODE_WIFILOCK_RELEASE:I = 0x57

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x4020081

.field private static final IDLE_REQUEST:I = 0x0

.field private static final KINETO_GANLITE_INTENT_ACTION:Ljava/lang/String; = "com.android.kineto.GanState"

.field private static final MESSAGE_CHECK_CW_STATUS:I = 0x64

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING_FOR_REMIND_ME:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final STA_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final UPDATE_STATE_REQUEST:I = 0x1

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field private static final WIFI_ASSOCIATE_AUTO:I = 0x0

.field private static final WIFI_ASSOCIATE_MANUAL:I = 0x1

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private mAutoEnableWifiApInDockMode:Z

.field private mAutoEnableWifiInDockMode:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

.field private mCWRegisteredWhenScreenOff:Z

.field private mChannelSwitchWorkAround:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCwExpiredTime:J

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mEmergencyCallbackMode:Z

.field private mEmergencyModeChanged:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMHS:Z

.field private mEnableMdnPassword:Z

.field private mEnableMhsFeature:Z

.field private mEnableTrafficStatsPoll:Z

.field private mEnablingWifiInterrupted:Z

.field private mForbiddenByExchangePolicy:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mHTCWirelessInSleepTime:Z

.field private mHTCWirelessSleepEndTimeMillis:J

.field private mHTCWirelessSleepEndToStartMillis:J

.field private mHTCWirelessSleepModeEnabled:Z

.field private mHTCWirelessSleepStartTimeMillis:J

.field private mHTCWirelessSleepStartToEndMillis:J

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIfWiFiHotspotRegBastReceiver:Z

.field private mIfWiFiRegBastReceiver:Z

.field private mInDockMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mOpenNetworkBlockLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPersistMHS:Z

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPluggedType:I

.field private mPreEmergencyModeChanged:Z

.field private mPreviousWFDState:Z

.field private mProcessingMHS:Z

.field private mQuickBootPowerOffIntentReceived:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScanCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private mScreenOffSaved:Z

.field private mSecureNetworkNotificationEnabled:Z

.field private mSecureNetworkNotificationEnabledSettingObserver:Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;

.field private mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mUidMHS:I

.field private mUpdateStateIntent:Landroid/app/PendingIntent;

.field private mVzwWifiStatusFeature:Z

.field private mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiApMhsPermission:Z

.field private mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnabled:Z

.field private mWifiEnabledByDock:Z

.field private mWifiOffloadEnabled:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private msenseVersion:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0xa8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 682
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 159
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    .line 160
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mPreviousWFDState:Z

    .line 163
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 164
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    .line 165
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    .line 172
    new-instance v6, Lcom/android/server/WifiService$LockList;

    invoke-direct {v6, p0, v11}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 182
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    .line 191
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 192
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mHTCWirelessInSleepTime:Z

    .line 195
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    .line 199
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    .line 201
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    .line 206
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 207
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 208
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    .line 209
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 214
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiOffloadEnabled:Z

    .line 217
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 226
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 233
    iput-object v11, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 234
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 235
    iput v9, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 244
    const-wide/16 v6, 0xe10

    iput-wide v6, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    .line 248
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 254
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 326
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    .line 329
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 331
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 335
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    .line 338
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mChannelSwitchWorkAround:Z

    .line 354
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 365
    new-instance v6, Landroid/net/NetworkInfo;

    const-string v7, "WIFI"

    const-string v8, ""

    invoke-direct {v6, v10, v9, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 431
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 432
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 433
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 434
    iput v13, p0, Lcom/android/server/WifiService;->mUidMHS:I

    .line 435
    iput-object v11, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 436
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 437
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 438
    iput v13, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 441
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 442
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 443
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    .line 447
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    .line 450
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    .line 461
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 676
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 2592
    new-instance v6, Lcom/android/server/WifiService$16;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$16;-><init>(Lcom/android/server/WifiService;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 2617
    new-instance v6, Lcom/android/server/WifiService$17;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$17;-><init>(Lcom/android/server/WifiService;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 683
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 685
    const-string v6, "wifi.interface"

    const-string v7, "wlan0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 687
    new-instance v6, Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 688
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 689
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 691
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 692
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v2, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 693
    .local v2, idleIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 696
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v6, :cond_0

    .line 697
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    .line 703
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    invoke-direct {v0, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 704
    .local v0, cwExpiredReregisterIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    .line 707
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-direct {v4, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 708
    .local v4, updateStateIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    .line 712
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "wireless_display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/WirelessDisplayManager;

    iput-object v6, p0, Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    .line 716
    invoke-direct {p0}, Lcom/android/server/WifiService;->getOpenNetworkBlockedListFromDB()V

    .line 719
    :try_start_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/server/WifiService;->msenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v12, :cond_2

    :cond_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 723
    :cond_2
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 724
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 725
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 728
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-eq v6, v7, :cond_4

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x40

    if-ne v6, v7, :cond_d

    .line 729
    :cond_4
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 730
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 735
    :cond_5
    :goto_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v12, :cond_6

    .line 736
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    .line 742
    :cond_6
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v6, :cond_7

    .line 743
    const-string v6, "WifiService"

    const-string v7, "AKA: HTC_EAP_AKA_flag is true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$1;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 764
    :cond_7
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "WifiService"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 765
    .local v5, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 767
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$2;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 815
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 816
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$3;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_8

    .line 871
    const-string v6, "WifiService"

    const-string v7, "[C+W] Add ACTION_CW_REGISTRATION_STATE_CHANGED receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$4;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 921
    const-string v6, "WifiService"

    const-string v7, "[C+W] Add ACTION_MOBILEDATA_MODE_CHANGED receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$5;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 945
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    if-nez v6, :cond_9

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_a

    .line 946
    :cond_9
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$6;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1010
    :cond_a
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$7;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1049
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$8;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1093
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$9;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$9;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.kineto.GanState"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1136
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1137
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$10;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1159
    :cond_b
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    if-eqz v6, :cond_e

    .line 1160
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$11;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$11;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1198
    :cond_c
    :goto_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v12, :cond_10

    iget v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v7, 0x4040

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    .line 1199
    const-string v6, "WifiService"

    const-string v7, "DockWifi - Add ACTION_DOCK_EVENT (wifi) receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$13;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$13;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1243
    :goto_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$15;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$15;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1259
    new-instance v6, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 1260
    new-instance v6, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 1263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_networks_available_repeat_delay"

    const/16 v8, 0x384

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 1265
    new-instance v6, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 1266
    iget-object v6, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v6}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 1268
    new-instance v6, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabledSettingObserver:Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;

    .line 1269
    iget-object v6, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabledSettingObserver:Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;

    invoke-virtual {v6}, Lcom/android/server/WifiService$SecureNetworkNotificationEnabledSettingObserver;->register()V

    .line 1271
    return-void

    .line 731
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #wifiThread:Landroid/os/HandlerThread;
    :cond_d
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v12, :cond_5

    .line 732
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    goto/16 :goto_1

    .line 1174
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v5       #wifiThread:Landroid/os/HandlerThread;
    :cond_e
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    if-eqz v6, :cond_c

    .line 1176
    :cond_f
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$12;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$12;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1219
    :cond_10
    iget v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_11

    .line 1220
    const-string v6, "WifiService"

    const-string v7, "DockWifi - Add ACTION_DOCK_EVENT (hotspot) receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$14;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$14;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1238
    :cond_11
    const-string v6, "WifiService"

    const-string v7, "DockWifi - NOT add ACTION_DOCK_EVENT receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 720
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #wifiThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private RemoveOpenNetworkFromDBBlockedList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4496
    .local p1, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4497
    .local v1, newBlockedListDB:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4498
    .local v2, ssid:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 4500
    .end local v2           #ssid:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "OPENNETWORK_BLOCKED_LIST_ARRAY"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4501
    const/4 v3, 0x1

    return v3
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateDevicePolicy()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/server/WifiService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->setCWExpiredReregisterAlarm()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    return p1
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->checkHtcCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/WifiService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/WifiService;Lcom/htc/service/WirelessDisplayManager;)Lcom/htc/service/WirelessDisplayManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 3393
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$6900(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 3397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3399
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3400
    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 3415
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 3417
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3418
    const/4 v3, 0x1

    .line 3422
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3420
    return v3

    .line 3402
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 3405
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3422
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3409
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private actionScreenOff()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1669
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_idle_ms"

    const-wide/32 v5, 0xdbba0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1672
    .local v0, idleMillis:J
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1677
    .local v2, stayAwakeConditions:I
    const-string v3, "WifiService"

    const-string v4, "actionScreenOff()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x26

    if-ne v3, v4, :cond_0

    .line 1680
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x71

    if-ne v3, v4, :cond_0

    .line 1681
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1682
    const-string v3, "WifiService"

    const-string v4, "start blist filtering"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_blist()V

    .line 1689
    :cond_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1690
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1719
    return-void
.end method

.method private actionScreenOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1640
    const-string v0, "WifiService"

    const-string v1, "actionScreenOn()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 1643
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    .line 1644
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1645
    const-string v0, "WifiService"

    const-string v1, "stop blist filtering"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_blist()V

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1654
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1655
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1656
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    .line 1666
    return-void
.end method

.method private addOpenNetworkToDBBlockedList(Ljava/lang/String;)Z
    .locals 4
    .parameter "ssid"

    .prologue
    .line 4486
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OPENNETWORK_BLOCKED_LIST_ARRAY"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4487
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OPENNETWORK_BLOCKED_LIST_ARRAY"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4490
    .local v0, newBlockedListDB:Ljava/lang/StringBuffer;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4491
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OPENNETWORK_BLOCKED_LIST_ARRAY"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4492
    const/4 v1, 0x1

    return v1

    .line 4489
    .end local v0           #newBlockedListDB:Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #newBlockedListDB:Ljava/lang/StringBuffer;
    goto :goto_0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 4330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4331
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4332
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4334
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4336
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 4335
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private cancelCWExpiredReregisterAlarm()V
    .locals 2

    .prologue
    .line 3946
    const-string v0, "WifiService"

    const-string v1, "[C+W] cancelling re-register timer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3947
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3948
    return-void
.end method

.method private checkAndSetNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3734
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_1

    .line 3838
    :cond_0
    :goto_0
    return-void

    .line 3739
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v7, :cond_0

    .line 3740
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    if-eqz v7, :cond_0

    .line 3743
    :cond_2
    iget-object v7, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 3744
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_3

    sget-object v7, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_a

    .line 3747
    :cond_3
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v5

    .line 3748
    .local v5, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_a

    .line 3750
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 3751
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xda

    if-ne v7, v8, :cond_4

    .line 3752
    const-string v7, "WifiService"

    const-string v8, "Enter numScansSinceNetworkStateChange"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    iget v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    if-lt v7, v11, :cond_0

    .line 3761
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v11, v7, v10, v10}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 3763
    :cond_4
    iget v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    if-lt v7, v12, :cond_0

    .line 3771
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v11, v7, v10, v10}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 3777
    :cond_5
    const/4 v2, 0x0

    .line 3779
    .local v2, numOpenNetworks:I
    const/4 v3, 0x0

    .line 3781
    .local v3, numSecureNetworks:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_8

    .line 3782
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 3786
    .local v4, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "[ESS]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3791
    iget-object v1, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    .line 3792
    .local v1, mOpenNetworkBlockListsTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3793
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is in opennetwork block list\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    .end local v1           #mOpenNetworkBlockListsTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3798
    .restart local v1       #mOpenNetworkBlockListsTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3804
    .end local v1           #mOpenNetworkBlockListsTemp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v7, :cond_9

    if-lez v2, :cond_9

    .line 3806
    iget v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    if-lt v7, v12, :cond_0

    .line 3814
    invoke-direct {p0, v11, v2, v10, v10}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto/16 :goto_0

    .line 3819
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    if-eqz v7, :cond_a

    if-lez v3, :cond_a

    .line 3820
    iget v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    if-lt v7, v12, :cond_0

    .line 3828
    invoke-direct {p0, v11, v3, v10, v10}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto/16 :goto_0

    .line 3837
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v3           #numSecureNetworks:I
    .end local v5           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_a
    invoke-direct {p0, v10, v10, v10, v10}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto/16 :goto_0
.end method

.method private declared-synchronized checkAndUnregisterReceiver(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 1722
    monitor-enter p0

    if-ne p1, v0, :cond_2

    .line 1723
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1729
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1736
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1737
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1739
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_3

    .line 1740
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1741
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1746
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1747
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1749
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v0, :cond_5

    .line 1750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1753
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkHtcCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 4270
    const-string v1, "content://customization_settings/SettingTable/application_Wifihotspot"

    .line 4272
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/WifiService;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4273
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    if-eqz v0, :cond_0

    .line 4275
    invoke-direct {p0, v0, p1}, Lcom/android/server/WifiService;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 4277
    :cond_0
    return-void
.end method

.method private checkScreenOffSavedAndDoCommand()V
    .locals 2

    .prologue
    .line 1629
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-nez v0, :cond_1

    .line 1630
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1633
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    goto :goto_0
.end method

.method private checkWifiApRemindDialog()Z
    .locals 9

    .prologue
    const/16 v8, 0xa8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4419
    const/4 v2, -0x1

    .line 4420
    .local v2, showDialog:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_0

    .line 4422
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_power_mode_remind"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 4423
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiApRemindDialog flag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4430
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_1

    .line 4432
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.hotspot.SETUP_POWER_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4433
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4434
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4457
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 4424
    :catch_0
    move-exception v0

    .line 4425
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .line 4426
    const-string v5, "WifiService"

    const-string v6, "checkWifiApRemindDialog exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4435
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 4436
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifiApRemindDialog startActivity exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4440
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v5, :cond_2

    .line 4441
    const-string v4, "WifiService"

    const-string v5, "MHS permission is not allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4444
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 4445
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    if-eqz v3, :cond_4

    .line 4446
    const-string v3, "WifiService"

    const-string v5, "[setWifiApEnabledMhsRequest] enable AP  "

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v3, :cond_3

    .line 4448
    invoke-direct {p0, v4}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 4449
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 4450
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 4455
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v3, v4

    .line 4457
    goto :goto_1

    .line 4453
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_2
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const v4, 0x25015

    const/4 v3, 0x0

    .line 3686
    iget-object v1, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 3687
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3693
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3694
    return-void

    .line 3690
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 4280
    const/4 v1, 0x0

    .line 4281
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4326
    :cond_0
    :goto_0
    return-object v2

    .line 4284
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4287
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 4288
    const-string v0, "WifiService"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4291
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 4292
    const-string v0, "WifiService"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4296
    :cond_3
    const/4 v7, 0x0

    .line 4297
    goto :goto_0

    .line 4299
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4300
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 4301
    const-string v0, "WifiService"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4305
    :cond_5
    const/4 v7, 0x0

    .line 4306
    goto :goto_0

    .line 4308
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4309
    const/4 v8, 0x0

    .line 4310
    .local v8, data:[B
    const/4 v6, 0x0

    .line 4313
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 4314
    invoke-direct {p0, v8}, Lcom/android/server/WifiService;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 4319
    if-eqz v7, :cond_8

    .line 4320
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4323
    :cond_7
    :goto_1
    const/4 v7, 0x0

    :cond_8
    move-object v2, v6

    .line 4326
    goto :goto_0

    .line 4315
    :catch_0
    move-exception v9

    .line 4316
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4317
    const/4 v6, 0x0

    .line 4319
    if-eqz v7, :cond_8

    .line 4320
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4319
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 4320
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 4321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4323
    :cond_9
    const/4 v7, 0x0

    .line 4319
    :cond_a
    throw v0
.end method

.method private getOpenNetworkBlockedListFromDB()V
    .locals 9

    .prologue
    .line 4471
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "OPENNETWORK_BLOCKED_LIST_ARRAY"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4473
    .local v1, blockedListDB:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4482
    :goto_0
    return-void

    .line 4476
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4477
    .local v2, blockedListDBArray:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4478
    .local v5, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 4479
    .local v6, ssid:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4478
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4481
    .end local v6           #ssid:Ljava/lang/String;
    :cond_1
    iput-object v5, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    goto :goto_0
.end method

.method private getPersistedDockWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1415
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1417
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "dock_hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1421
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1417
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v1

    .line 1419
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "dock_hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1420
    const-string v2, "WifiService"

    const-string v4, "DockWifi- set DOCK_HOTSPOT_ON to 0 in getPersistedDockWifiApEnabled"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1421
    goto :goto_0
.end method

.method private getPersistedDockWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1434
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1436
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1440
    :goto_0
    return v2

    .line 1436
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1439
    const-string v3, "WifiService"

    const-string v4, "DockWifi- set DOCK_WIFI_ON to 1 in getPersistedDockWifiEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPersistedWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1381
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1383
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1386
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1383
    goto :goto_0

    .line 1384
    :catch_0
    move-exception v1

    .line 1385
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 1386
    goto :goto_0
.end method

.method private getPersistedWifiAssociateMode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1355
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1357
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1360
    :goto_0
    return v2

    .line 1358
    :catch_0
    move-exception v1

    .line 1359
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1343
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1345
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1348
    :goto_0
    return v2

    .line 1346
    :catch_0
    move-exception v1

    .line 1347
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x0

    .line 4230
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4232
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "htc_wireless_sleep_mode_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4238
    :goto_0
    :try_start_1
    const-string v2, "htc_wireless_sleep_start_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4244
    :goto_1
    :try_start_2
    const-string v2, "htc_wireless_sleep_end_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4250
    :goto_2
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- get variables from db: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 4256
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    .line 4258
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 4265
    :goto_3
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- start->end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end->start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    return-void

    .line 4233
    :catch_0
    move-exception v1

    .line 4234
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 4235
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepModeEnabled default value: true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4239
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 4240
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    .line 4241
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepStartTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4245
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v1

    .line 4246
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    .line 4247
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepEndTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4261
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 4263
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    goto :goto_3
.end method

.method private handleAirplaneModeToggled(Z)V
    .locals 2
    .parameter "airplaneEnabled"

    .prologue
    .line 1558
    if-eqz p1, :cond_1

    .line 1560
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    .line 1561
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1567
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_0
.end method

.method private handleWifiToggled(Z)V
    .locals 4
    .parameter "wifiEnabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1541
    iget-object v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1542
    .local v0, airplaneEnabled:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1543
    if-eqz v0, :cond_1

    .line 1544
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    .line 1555
    :goto_1
    return-void

    .end local v0           #airplaneEnabled:Z
    :cond_0
    move v0, v2

    .line 1541
    goto :goto_0

    .line 1546
    .restart local v0       #airplaneEnabled:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_1

    .line 1553
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3200
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 3181
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3183
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 3188
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3190
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExchangePolicyEnabled()Z
    .locals 2

    .prologue
    .line 4615
    const/4 v0, 0x0

    .line 4617
    .local v0, senseVersion:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4620
    :goto_0
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 4618
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3369
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3378
    :goto_0
    return-void

    .line 3372
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3375
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3381
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3390
    :goto_0
    return-void

    .line 3384
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3387
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 3706
    iget-wide v5, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v5, preTxPkts:J
    iget-wide v3, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 3707
    .local v3, preRxPkts:J
    const/4 v1, 0x0

    .line 3709
    .local v1, dataActivity:I
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .line 3710
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 3712
    cmp-long v11, v5, v13

    if-gtz v11, :cond_0

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 3713
    :cond_0
    iget-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    sub-long v9, v11, v5

    .line 3714
    .local v9, sent:J
    iget-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    sub-long v7, v11, v3

    .line 3715
    .local v7, received:J
    cmp-long v11, v9, v13

    if-lez v11, :cond_1

    .line 3716
    or-int/lit8 v1, v1, 0x2

    .line 3718
    :cond_1
    cmp-long v11, v7, v13

    if-lez v11, :cond_2

    .line 3719
    or-int/lit8 v1, v1, 0x1

    .line 3722
    :cond_2
    iget v11, p0, Lcom/android/server/WifiService;->mDataActivity:I

    if-eq v1, v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v11, :cond_3

    .line 3723
    iput v1, p0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 3724
    iget-object v11, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3725
    .local v0, client:Lcom/android/internal/util/AsyncChannel;
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/WifiService;->mDataActivity:I

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 3729
    .end local v0           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_3
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 10
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 4340
    const-string v7, "usermanagement"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 4341
    .local v6, usermanagementList:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 4343
    const-string v3, "plenty_set1"

    .line 4344
    .local v3, key_plenty:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 4346
    .local v5, usermanagement:Landroid/os/Bundle;
    const-string v1, "max_connection"

    .line 4347
    .local v1, KEY_MAX_CONNECTION:Ljava/lang/String;
    const-string v0, "connection_array"

    .line 4349
    .local v0, KEY_CONNECTION_ARRAY:Ljava/lang/String;
    const-string v4, "0"

    .line 4350
    .local v4, max_connection:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4351
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4352
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get max_connection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_max_connection"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4355
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 4360
    :goto_0
    const-string v2, "0"

    .line 4361
    .local v2, connection_array:Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4362
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4363
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get connection_array:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_connection_array"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4366
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 4371
    .end local v0           #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .end local v1           #KEY_MAX_CONNECTION:Ljava/lang/String;
    .end local v2           #connection_array:Ljava/lang/String;
    .end local v3           #key_plenty:Ljava/lang/String;
    .end local v4           #max_connection:Ljava/lang/String;
    .end local v5           #usermanagement:Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 4357
    .restart local v0       #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .restart local v1       #KEY_MAX_CONNECTION:Ljava/lang/String;
    .restart local v3       #key_plenty:Ljava/lang/String;
    .restart local v4       #max_connection:Ljava/lang/String;
    .restart local v5       #usermanagement:Landroid/os/Bundle;
    :cond_1
    const-string v7, "WifiService"

    const-string v8, "Can\'t get max_connection"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4368
    .restart local v2       #connection_array:Ljava/lang/String;
    :cond_2
    const-string v7, "WifiService"

    const-string v8, "Can\'t get connection_array"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private persistDockWifiApEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1427
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1430
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1431
    return-void

    .line 1428
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1430
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistDockWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1445
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1448
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_wifi_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1449
    return-void

    .line 1446
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiAPEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 4171
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4172
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "hotspot_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4173
    return-void

    .line 4172
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiAssociateMode(I)V
    .locals 3
    .parameter "isManual"

    .prologue
    .line 4641
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4642
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4643
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4644
    const-string v1, "wifi_associate_manual"

    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4645
    return-void
.end method

.method private persistWifiOffloadEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 4663
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "WifiOffload: persistWifiOffloadEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4666
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_offload_enabled"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4667
    return-void

    .line 4664
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "WifiOffload: persistWifiOffloadEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4666
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1574
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1575
    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1576
    return-void
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1393
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1394
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1395
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1396
    if-eqz v0, :cond_1

    .line 1397
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1399
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1411
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1412
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 1394
    goto :goto_0

    .line 1402
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1405
    :cond_2
    if-eqz v0, :cond_3

    .line 1406
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1408
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 3145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3146
    .local v0, intentFilter:Landroid/content/IntentFilter;
    if-nez p1, :cond_3

    .line 3147
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3148
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3149
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3150
    const-string v1, "com.htc.intent.action.WIFIACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3151
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3152
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3153
    const-string v1, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3154
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3155
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3156
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3158
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_0

    .line 3159
    const-string v1, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3160
    const-string v1, "WifiService"

    const-string v2, "[C+W] Add Action ACTION_CW_EXPIRED_REREGISTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 3166
    :cond_1
    const-string v1, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3176
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3177
    return-void

    .line 3169
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3170
    const-string v1, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3171
    const-string v1, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3172
    const-string v1, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3173
    const-string v1, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3174
    const-string v1, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 3463
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$7100(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 3465
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 3469
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3471
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 3472
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3473
    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 3487
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3491
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3494
    return v0

    .line 3467
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3475
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 3489
    :catch_0
    move-exception v4

    goto :goto_2

    .line 3478
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3491
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3481
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 3630
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3631
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    const-string v2, "WifiService"

    const-string v3, "removeMulticasterLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    if-eqz v1, :cond_0

    .line 3633
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 3635
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 3638
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 3639
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 3640
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 3642
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 3643
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 3644
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3645
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 3647
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    .line 3648
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_2

    .line 3649
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 3650
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-nez v2, :cond_2

    .line 3651
    const-string v2, "WifiService"

    const-string v3, "Screen Off: start blist filtering"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_blist()V

    .line 3660
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 3663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3665
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3668
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3670
    return-void

    .line 3668
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3666
    :catch_0
    move-exception v2

    .line 3668
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 2936
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2937
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 2938
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2939
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2938
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2942
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2943
    monitor-exit p0

    return-void

    .line 2936
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3846
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 3847
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 3848
    return-void
.end method

.method private sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "uid"

    .prologue
    .line 3698
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3701
    return-void

    .line 3698
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private setCWExpiredReregisterAlarm()V
    .locals 10

    .prologue
    .line 3931
    const-string v4, "WifiService"

    const-string v5, "[C+W] setCWExpiredReregisterAlarm+"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    const-string v4, "wifi.cw.advanced.time"

    const-string v5, "60"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3934
    .local v1, advancedTimeProp:Ljava/lang/String;
    const/16 v0, 0x3c

    .line 3936
    .local v0, advancedTime:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3939
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    sub-long v2, v4, v6

    .line 3940
    .local v2, triggerTime:J
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] set re-register triggerTime to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "advancedTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    iget-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3942
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] setted re-register triggerTime to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    return-void

    .line 3937
    .end local v2           #triggerTime:J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 5
    .parameter "deviceIdle"

    .prologue
    .line 2925
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 2926
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2931
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2933
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v10, 0x1130012

    const v9, 0x1130011

    const/4 v8, 0x0

    const v7, 0x4020081

    .line 3869
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 3927
    :cond_0
    :goto_0
    return-void

    .line 3873
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3877
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_5

    .line 3880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 3884
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 3886
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 3887
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 3888
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 3889
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 3890
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3901
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mSecureNetworkNotificationEnabled:Z

    if-eqz v3, :cond_4

    .line 3902
    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3905
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3916
    .local v0, details:Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3917
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3921
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3926
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto :goto_0

    .line 3910
    :cond_4
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3912
    .restart local v2       #title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #details:Ljava/lang/CharSequence;
    goto :goto_1

    .line 3923
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method private setParameterMHS(ZZILandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    .line 4463
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 4464
    iput-boolean p2, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 4465
    iput p3, p0, Lcom/android/server/WifiService;->mUidMHS:I

    .line 4466
    iput-object p4, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 4467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 4468
    return-void
.end method

.method private setWifiApEnableInDockMode(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1485
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 1488
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode return due to hotspot already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :goto_0
    return-void

    .line 1491
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1492
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 1493
    .local v0, WifiState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1494
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode turn off Wifi then enable hotspot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1498
    .end local v0           #WifiState:I
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method

.method private setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    .line 4381
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/WifiService;->setWifiApMhsRequest(ZZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private setWifiApMhsRequest(ZZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4386
    const-string v0, "WifiService"

    const-string v3, "setWifiApMhsRequest enter"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 4388
    const-string v0, "WifiService"

    const-string v2, "MHS is processing"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4415
    :goto_0
    return v0

    .line 4391
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 4392
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 4393
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 4394
    invoke-virtual {p0, v5, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v0, v2

    .line 4395
    goto :goto_0

    .line 4398
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WifiService;->setParameterMHS(ZZILandroid/net/wifi/WifiConfiguration;)V

    .line 4399
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 4400
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, -0x13

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 4401
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-nez v0, :cond_3

    .line 4402
    const-string v0, "WifiService"

    const-string v3, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 4404
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 4405
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    :cond_2
    :goto_1
    move v0, v2

    .line 4415
    goto :goto_0

    .line 4406
    :cond_3
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-ne v0, v2, :cond_4

    .line 4407
    const-string v0, "WifiService"

    const-string v3, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 4409
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    goto :goto_1

    .line 4410
    :cond_4
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4411
    const-string v0, "WifiService"

    const-string v2, "MHS HTC_PERMITTED_TETHER_PROGRASSING"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    move v0, v1

    .line 4413
    goto :goto_0
.end method

.method private setWifiEnableInDockMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1503
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1504
    if-ne p1, v3, :cond_4

    .line 1505
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1506
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :goto_0
    return-void

    .line 1509
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 1510
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 1511
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode turn off hotspot then enable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1514
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 1517
    :cond_4
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 1518
    :cond_5
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto :goto_0

    .line 1522
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    if-eqz v1, :cond_9

    .line 1523
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 1524
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8

    .line 1527
    :cond_7
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1535
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto/16 :goto_0

    .line 1530
    .restart local v0       #suppState:Landroid/net/wifi/SupplicantState;
    :cond_8
    const-string v1, "WifiService"

    const-string v2, "DockWifi - We don\'t turn off wifi due to Wifi is connecting or connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1533
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_9
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - We don\'t turn off wifi due to mWifiEnabledByDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1367
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    if-eqz v2, :cond_1

    .line 1368
    const-string v0, "WifiService"

    const-string v2, "shouldWifiBeEnabled(): ForbiddenByExchangePolicy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1375
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1373
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1375
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1330
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1331
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1333
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1334
    if-ne v1, v2, :cond_0

    .line 1335
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1336
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateDevicePolicy()V
    .locals 5

    .prologue
    .line 4624
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4625
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 4626
    .local v1, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 4627
    .local v0, allowStatus:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDevicePolicy Exchange policy allowStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    if-nez v0, :cond_1

    .line 4629
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    .line 4634
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 4636
    .end local v0           #allowStatus:I
    .end local v1           #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void

    .line 4632
    .restart local v0       #allowStatus:I
    .restart local v1       #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/16 v11, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2948
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    if-eqz v8, :cond_1

    .line 2949
    const-string v6, "WifiService"

    const-string v7, "updateWifiState(): mQuickBootPowerOffIntentReceived"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :cond_0
    :goto_0
    return-void

    .line 2954
    :cond_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$6000(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 2955
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 2958
    .local v1, strongestLockMode:I
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v3

    .line 2959
    .local v3, wifiApEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_9

    move v2, v6

    .line 2960
    .local v2, wifiApAirplaneMode:Z
    :goto_1
    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    move v4, v6

    .line 2963
    .local v4, wifiApShouldBeEnabled:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v8, :cond_b

    .line 2964
    const/4 v5, 0x0

    .line 2973
    .local v5, wifiShouldBeStarted:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    .line 2975
    :cond_2
    if-eqz v0, :cond_3

    .line 2976
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$6100(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 2979
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v8, :cond_4

    if-ne v1, v13, :cond_4

    .line 2980
    const/4 v1, 0x1

    .line 2984
    :cond_4
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiState(): wifiApEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wifiApAirplaneMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "getWifiEnabledState(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getWifiApEnabledState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiState(): mAirplaneModeOn.get(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPersistWifiState.get(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiState(): mEmergencyCallbackMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDeviceIdle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lockHeld: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mStopWifiRequested:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    if-eqz v4, :cond_f

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v8

    if-ne v8, v6, :cond_8

    .line 2993
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_5

    .line 2994
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: enable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-ne v8, v6, :cond_8

    .line 2997
    :cond_6
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v8, :cond_7

    .line 2999
    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 3000
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 3001
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 3003
    :cond_7
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v12, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3076
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3077
    if-eqz v5, :cond_17

    .line 3080
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 3081
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable and start wifi"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 3083
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 3084
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v13, :cond_15

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 3085
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v8, v6, v9}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 3086
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x3

    if-ne v1, v9, :cond_16

    :goto_6
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto/16 :goto_0

    .end local v2           #wifiApAirplaneMode:Z
    .end local v4           #wifiApShouldBeEnabled:Z
    .end local v5           #wifiShouldBeStarted:Z
    :cond_9
    move v2, v7

    .line 2959
    goto/16 :goto_1

    .restart local v2       #wifiApAirplaneMode:Z
    :cond_a
    move v4, v7

    .line 2960
    goto/16 :goto_2

    .line 2966
    .restart local v4       #wifiApShouldBeEnabled:Z
    :cond_b
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v8, :cond_c

    if-eqz v0, :cond_d

    :cond_c
    move v5, v6

    .line 2968
    .restart local v5       #wifiShouldBeStarted:Z
    :goto_7
    if-eqz v5, :cond_e

    iget-object v8, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_e

    move v5, v6

    :goto_8
    goto/16 :goto_3

    .end local v5           #wifiShouldBeStarted:Z
    :cond_d
    move v5, v7

    .line 2966
    goto :goto_7

    .restart local v5       #wifiShouldBeStarted:Z
    :cond_e
    move v5, v7

    .line 2968
    goto :goto_8

    .line 3027
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v8

    if-ne v8, v6, :cond_8

    .line 3028
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_10

    .line 3029
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: disable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_10
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_12

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_12

    :cond_11
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-ne v8, v6, :cond_8

    .line 3032
    :cond_12
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): disable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 3034
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v12, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3035
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_13

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_8

    .line 3039
    :cond_13
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_8

    .line 3040
    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v9, -0x43

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v12}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 3041
    :cond_14
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    goto/16 :goto_4

    :cond_15
    move v8, v7

    .line 3084
    goto/16 :goto_5

    :cond_16
    move v6, v7

    .line 3086
    goto :goto_6

    .line 3103
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 3104
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): stop wifi"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v7, v6}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto/16 :goto_0

    .line 3119
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 3120
    const-string v6, "WifiService"

    const-string v8, "updateWifiState(): disable wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 3

    .prologue
    .line 4652
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 4653
    .local v0, bRtn:Z
    return v0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 3

    .prologue
    .line 4657
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 4658
    .local v0, bRtn:Z
    return v0
.end method

.method public RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, -0x1

    .line 4532
    iget-object v3, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4534
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4535
    .local v1, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4536
    .local v0, index:I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4537
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t remove SSID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from open network block list\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    .end local v0           #index:I
    .end local v1           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v2

    .line 4540
    .restart local v0       #index:I
    .restart local v1       #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->RemoveOpenNetworkFromDBBlockedList(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4541
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t remove SSID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from open network block list (DB)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4544
    :cond_1
    iput-object v1, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    .line 4550
    const/4 v2, 0x0

    goto :goto_0

    .line 4546
    .end local v0           #index:I
    .end local v1           #newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not in open network block list\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 3568
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3569
    const-string v2, "WifiService"

    const-string v3, "acquireMulticastLock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 3571
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 3572
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3579
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_self()V

    .line 3580
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV6Packets()V

    .line 3581
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_dhcpoffer()V

    .line 3583
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_arp()V

    .line 3584
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_wivu()V

    .line 3585
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3586
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 3588
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x26

    if-ne v2, v4, :cond_1

    .line 3589
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x71

    if-ne v2, v4, :cond_1

    .line 3590
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 3591
    const-string v2, "WifiService"

    const-string v4, "stop blist filtering"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_blist()V

    .line 3597
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3599
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 3602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3603
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3605
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3608
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    return-void

    .line 3597
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3608
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3606
    :catch_0
    move-exception v2

    .line 3608
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 3349
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3353
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3354
    const/4 p4, 0x0

    .line 3356
    :cond_1
    if-eqz p4, :cond_2

    .line 3357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3359
    :cond_2
    if-nez p4, :cond_3

    .line 3360
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 3362
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3363
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 3364
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 3365
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOpenNetworkToBlockedList(Ljava/lang/String;)I
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v1, -0x1

    .line 4505
    iget-object v2, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4506
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already in open network block list\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    :goto_0
    return v1

    .line 4509
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 4510
    const-string v2, "WifiService"

    const-string v3, "Open network block list is full\n"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4514
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4516
    .local v0, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4517
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add SSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into open network block list\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4521
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->addOpenNetworkToDBBlockedList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4522
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add SSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into open network block list (DB)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4525
    :cond_3
    iput-object v0, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    .line 4528
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 2311
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2315
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceManager3LMService;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2316
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[3LM] not allow to update this SSID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :goto_0
    return v0

    .line 2321
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0

    .line 2324
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2548
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2550
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 2551
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1280
    iget-object v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1281
    iget-object v6, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1283
    iget-object v6, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiAssociateMode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1284
    iget-object v6, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/WifiService;->setAssociationManual(I)Z

    .line 1286
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 1290
    .local v2, wifiApEnabled:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v3

    .line 1291
    .local v3, wifiEnabled:Z
    const-string v7, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiService starting up with Wi-Fi "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_3

    const-string v6, "enabled"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " and Hotspot "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    const-string v6, "enabled"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 1299
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v6, :cond_0

    .line 1300
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1302
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v6, "wifi_offload_enabled"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_5

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiOffloadEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_4
    if-eqz v3, :cond_6

    .line 1313
    invoke-virtual {p0, v3}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1325
    :cond_1
    :goto_5
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1327
    return-void

    .end local v2           #wifiApEnabled:Z
    .end local v3           #wifiEnabled:Z
    :cond_2
    move v2, v5

    .line 1286
    goto :goto_0

    .line 1291
    .restart local v2       #wifiApEnabled:Z
    .restart local v3       #wifiEnabled:Z
    :cond_3
    const-string v6, "disabled"

    goto :goto_1

    :cond_4
    const-string v6, "disabled"

    goto :goto_2

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_5
    move v4, v5

    .line 1302
    goto :goto_3

    .line 1303
    :catch_0
    move-exception v1

    .line 1304
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "wifi_offload_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1305
    const-string v4, "WifiService"

    const-string v5, "WifiOffload: init WIFI_OFFLOAD_ENABLED to 0 in getpersistWifiOffloadEnabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1316
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    if-eqz v2, :cond_1

    .line 1318
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v4, :cond_7

    .line 1319
    invoke-virtual {p0, v9, v2}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_5

    .line 1321
    :cond_7
    invoke-virtual {p0, v9, v2}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_5
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 4184
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 4186
    :goto_0
    return v0

    .line 4185
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 4186
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x23

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2558
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2560
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 2561
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 2385
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2386
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2390
    :goto_0
    return v0

    .line 2389
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableSsdpPacket()Z
    .locals 2

    .prologue
    .line 4037
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4038
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 4039
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 2260
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2261
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 2262
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    .line 3206
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 3208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    :goto_0
    return-void

    .line 3213
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stay-awake conditions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3219
    const-string v4, "Internal state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3221
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3222
    const-string v4, "Latest scan results:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    .line 3224
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3225
    const-string v4, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 3227
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v5, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v4, v6, v8

    const/4 v4, 0x1

    iget v7, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    iget v7, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x4

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_2
    aput-object v4, v6, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 3235
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locks acquired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full high perf, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locks released: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full high perf, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3243
    const-string v4, "Locks held:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v4, p2}, Lcom/android/server/WifiService$LockList;->access$6200(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 3246
    const-string v4, "Scan count since last plugged in"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    iget-object v5, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    monitor-enter v5

    .line 3248
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3249
    .local v2, sc:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Scan count: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3251
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sc:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3253
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3254
    const-string v4, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 3256
    const-string v4, "WifiStateMachine dump"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enableAutoIP(I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 4600
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4602
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_0

    .line 4603
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    :goto_0
    const-string v1, "wifi_auto_ip_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4609
    return v3

    .line 4605
    :cond_0
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableFakeScanResult(Z)Z
    .locals 3
    .parameter "enableFake"

    .prologue
    .line 4729
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4730
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFakeScanResult enableFake="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getCallingPid()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->enableFakeScanResult(Z)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 2353
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2354
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 2356
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 2357
    if-eqz p2, :cond_0

    .line 2358
    const-string v0, "WifiService"

    const-string v1, "[C+W]enableNetwork tryTostartCWDeRegister++"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 2360
    const-string v0, "WifiService"

    const-string v1, "[C+W]enableNetwork tryTostartCWDeRegister--"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 2368
    :goto_0
    return v0

    .line 2367
    :cond_1
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4574
    const/4 v0, 0x0

    .line 4575
    .local v0, bRtn:Z
    if-eqz p1, :cond_0

    .line 4576
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4577
    const-string v1, "WifiService"

    const-string v2, "enable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    :goto_0
    return v0

    .line 4579
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4580
    const-string v1, "WifiService"

    const-string v2, "disable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 4559
    const/4 v0, 0x0

    .line 4560
    .local v0, bRtn:Z
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4561
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 4562
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4563
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4564
    const-string v2, "WifiService"

    const-string v3, "Enable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :goto_0
    return v0

    .line 4566
    :cond_0
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4567
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4568
    const-string v2, "WifiService"

    const-string v3, "disable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSsdpPacket()Z
    .locals 2

    .prologue
    .line 4031
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4032
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 4033
    const/4 v0, 0x1

    return v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 3337
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3342
    :goto_0
    return-void

    .line 3340
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4018
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4019
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociationManual()I
    .locals 1

    .prologue
    .line 4648
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4093
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4094
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2588
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2589
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 2296
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2297
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2301
    :goto_0
    return-object v0

    .line 2300
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2399
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2404
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicyEnabled()Z
    .locals 1

    .prologue
    .line 4718
    const/4 v0, 0x1

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 2498
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2499
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 3

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1463
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiApAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 3

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1479
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 1
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
    .line 2199
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2200
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getDongleScanList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2473
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 1

    .prologue
    .line 4128
    const/16 v0, 0xb

    return v0
.end method

.method public getMostPreferredNetwork()I
    .locals 1

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMostPreferredNetwork()I

    move-result v0

    return v0
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
    .line 4554
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/WifiService;->mOpenNetworkBlockLists:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4132
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4133
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
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
    .line 2413
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2414
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4376
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWagAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4056
    const-string v1, "persist.sys.cw.wagaddr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4057
    .local v0, wagAddr:Ljava/lang/String;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWagAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    return-object v0
.end method

.method public getWagAsUserDefined()Z
    .locals 4

    .prologue
    .line 4049
    const-string v1, "persist.sys.cw.settestwag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4050
    .local v0, val:Ljava/lang/String;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWagAsUserDefined : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2242
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 2015
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2016
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 4155
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4156
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1917
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1918
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 3

    .prologue
    .line 4704
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v0, :cond_0

    .line 4705
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiOffload: getWifiOffloadEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mWifiOffloadEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiOffloadEnabled:Z

    .line 4708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2573
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2574
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 2579
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2580
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2581
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v0

    return v0
.end method

.method public getWifidisplayApState()I
    .locals 1

    .prologue
    .line 2037
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2038
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifidisplayApState()I

    move-result v0

    return v0
.end method

.method public getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 2229
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2231
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 3547
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3549
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 3551
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3552
    monitor-exit v1

    .line 3565
    :goto_0
    return-void

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 3557
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 3558
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 3561
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    goto :goto_0

    .line 3561
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 2483
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_0

    .line 2484
    const/4 v0, 0x0

    .line 2487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 3673
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3675
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 3676
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWifiPowerModeNormal()Z
    .locals 1

    .prologue
    .line 4027
    const/4 v0, 0x1

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1584
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1588
    :goto_0
    return v0

    .line 1587
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 2287
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2288
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 2289
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 2268
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2269
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 2270
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 3613
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3616
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 3617
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 3618
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 3619
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3620
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3621
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3622
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 3619
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3625
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 3626
    return-void

    .line 3625
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 3456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 2336
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2337
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2341
    :goto_0
    return v0

    .line 2340
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetDhcpConfig()V
    .locals 1

    .prologue
    .line 4137
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4138
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->resetDhcpConfig()V

    .line 4139
    return-void
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 2424
    const/4 v0, 0x1

    .line 2425
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2426
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 2427
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 2430
    :goto_0
    return v1

    .line 2429
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAssociationManual(I)Z
    .locals 3
    .parameter "isManual"

    .prologue
    const/4 v2, 0x1

    .line 2274
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2275
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setAssociationManual(Z)Z

    .line 2278
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiAssociateMode(I)V

    .line 2279
    return v2

    .line 2277
    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setAssociationManual(Z)Z

    goto :goto_0
.end method

.method public setConnectionPolicyEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 4713
    const/4 v0, 0x1

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 2444
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2447
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 2448
    return-void
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 1452
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1453
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiApAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiApEnabled(Z)V

    .line 1456
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 1457
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    .line 1458
    :cond_0
    return v3
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 1468
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1469
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiEnabled(Z)V

    .line 1472
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 1473
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    .line 1474
    :cond_0
    return v3
.end method

.method public setFakeScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .parameter "fackScanResult"

    .prologue
    .line 4723
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4724
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setFakeScanResult(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 2460
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    :goto_0
    return-void

    .line 2462
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setHotspotAutoChannel(I)V
    .locals 3
    .parameter "autoChannel"

    .prologue
    .line 4044
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspotAutoChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setHotspotAutoChannel(I)V

    .line 4046
    return-void
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 1
    .parameter "networkId"

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setMostPreferredNetwork(I)Z

    move-result v0

    return v0
.end method

.method public setWagAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 4063
    const-string v0, "persist.sys.cw.wagaddr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWagAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4066
    :cond_0
    const-string v0, "persist.sys.cw.wagaddr"

    const-string v1, "114.81.255.179"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Just for test setWagAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setWagAsUserDefined(Z)Z
    .locals 3
    .parameter "set"

    .prologue
    const/4 v2, 0x1

    .line 4073
    if-ne p1, v2, :cond_0

    .line 4074
    const-string v0, "persist.sys.cw.settestwag"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    const-string v0, "WifiService"

    const-string v1, "setWagAsUserDefined : true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :goto_0
    return v2

    .line 4078
    :cond_0
    const-string v0, "persist.sys.cw.settestwag"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    const-string v0, "WifiService"

    const-string v1, "setWagAsUserDefined : false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 4142
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4143
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 2250
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2251
    if-nez p1, :cond_0

    .line 2254
    :goto_0
    return-void

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1929
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabled enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getCallingPid()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v4, :cond_0

    if-ne p2, v2, :cond_0

    .line 1931
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2004
    :goto_0
    return-void

    .line 1934
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    .line 1935
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1936
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 1939
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1943
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tethering_blocked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 1945
    const-string v2, "WifiService"

    const-string v3, "[3LM] not allow to enable Hotspot!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1951
    :cond_2
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabled enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 1954
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1955
    if-eqz v0, :cond_3

    .line 1956
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1958
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1959
    if-eqz p2, :cond_9

    .line 1960
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWifiApEnabled] enable AP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_5

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1967
    const-string v4, "WifiService"

    const-string v5, "wait WiFiDisplay AP to disabled state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #WifiAPflightenable:Z
    .end local v1           #i:I
    :cond_4
    move v0, v3

    .line 1953
    goto :goto_1

    .line 1977
    .restart local v0       #WifiAPflightenable:Z
    .restart local v1       #i:I
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v4, :cond_6

    .line 1980
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1981
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 1982
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1992
    .end local v1           #i:I
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1994
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v2, :cond_8

    .line 1995
    if-nez p2, :cond_8

    .line 1996
    iget-object v2, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v4, -0x43

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1997
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 2001
    :cond_8
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1985
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 1988
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    goto :goto_4

    .line 1970
    .restart local v1       #i:I
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4198
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabledMhsRequest enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getCallingPid()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v3, :cond_0

    .line 4225
    :goto_0
    return v2

    .line 4200
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 4203
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 4204
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4205
    if-eqz v0, :cond_1

    .line 4206
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4221
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    move v2, v1

    .line 4225
    goto :goto_0

    .end local v0           #WifiAPflightenable:Z
    :cond_2
    move v0, v2

    .line 4203
    goto :goto_1
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 4147
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4148
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 4149
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 4160
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4161
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 4165
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 4166
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 4167
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 1
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2180
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z
    .locals 1
    .parameter "channel"
    .parameter "BSSID"
    .parameter "guest_key"
    .parameter "transId"

    .prologue
    .line 2184
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2185
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 1
    .parameter "disabled"

    .prologue
    .line 2218
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2219
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayUnscan(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1767
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1768
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1776
    .local v0, wifiApEnabled:Z
    :cond_1
    if-eqz v0, :cond_4

    .line 1777
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1778
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    .line 1779
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1780
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v1, :cond_3

    .line 1781
    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x43

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1782
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1784
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1786
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WifiService;->setWifiEnabledPersist(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1767
    .end local v0           #wifiApEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .locals 10
    .parameter "enable"
    .parameter "persist"

    .prologue
    const v9, 0x4070062

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1823
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1825
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiEnabledPersist enable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", persist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getCallingPid()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    if-eqz v6, :cond_0

    .line 1830
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v6}, Lcom/android/server/DeviceManager3LMService;->getWifiState()I

    move-result v6

    if-nez v6, :cond_0

    .line 1831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1832
    iget-object v5, p0, Lcom/android/server/WifiService;->mDeviceManager:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v5, v9, v9, v4}, Lcom/android/server/DeviceManager3LMService;->notification(III)V

    .line 1834
    const-string v5, "WifiService"

    const-string v6, "[3LM] not allow to turn on WiFi!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :goto_0
    return v4

    .line 1840
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne p1, v5, :cond_1

    .line 1841
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1842
    .local v1, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 1843
    .local v0, allowStatus:I
    if-nez v0, :cond_1

    .line 1844
    const-string v5, "WifiService"

    const-string v6, "Forbidden by Exchange policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1852
    .end local v0           #allowStatus:I
    .end local v1           #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1853
    const-string v5, "WifiService"

    const-string v6, "skip turning WiFi on due to in quick power off processing"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1859
    :cond_2
    if-eqz p1, :cond_6

    .line 1860
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1869
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1871
    iget-object v6, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1878
    if-eqz p2, :cond_4

    .line 1879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1880
    .local v2, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 1881
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1884
    .end local v2           #ident:J
    :cond_4
    if-eqz p1, :cond_7

    .line 1885
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v6, :cond_5

    .line 1887
    invoke-direct {p0, v4}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1888
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1890
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkScreenOffSavedAndDoCommand()V

    .line 1898
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 1901
    const-string v4, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STA (mIfWiFiRegBastReceiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1904
    goto/16 :goto_0

    .line 1862
    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_3

    .line 1863
    const-string v6, "WifiService"

    const-string v7, "[C+W] setWifiEnabledPersist startCWDRegister++"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 1865
    const-string v6, "WifiService"

    const-string v7, "[C+W] setWifiEnabledPersist startCWDRegister--"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1894
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_2
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 4693
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v0, :cond_0

    .line 4694
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiOffload: setWifiOffloadEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiOffloadEnabled:Z

    .line 4696
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiOffloadEnabled(Z)V

    .line 4697
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiOffloadEnabled(Z)Z

    .line 4698
    const/4 v0, 0x1

    .line 4700
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 4586
    const/4 v0, 0x0

    .line 4587
    .local v0, bRtn:Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4588
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4589
    const-string v1, "WifiService"

    const-string v2, "do not let wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    :goto_0
    return v0

    .line 4591
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4592
    const-string v1, "WifiService"

    const-string v2, "allow wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/16 v6, 0x26

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2111
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2112
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifidisplayApEnabled enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 2115
    .local v0, WifiAPflightenable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2116
    if-eqz v0, :cond_0

    .line 2117
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2120
    :cond_0
    if-eqz p2, :cond_6

    .line 2121
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    if-nez v2, :cond_4

    .line 2122
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 2123
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 2124
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    .line 2130
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v6, :cond_4

    .line 2132
    :cond_1
    const-string v2, "WifiService"

    const-string v3, "stop all packet filter when we enable concurrent mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_self()V

    .line 2134
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV6Packets()V

    .line 2135
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_dhcpoffer()V

    .line 2137
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_arp()V

    .line 2138
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_wivu()V

    .line 2139
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2140
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 2142
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v6, :cond_3

    .line 2143
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_3

    .line 2144
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 2145
    const-string v2, "WifiService"

    const-string v3, "stop blist filtering"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_blist()V

    .line 2150
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiDisplayOn(Z)V

    .line 2163
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2164
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFDAP (mIfWiFiRegBastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    return-void

    .end local v0           #WifiAPflightenable:Z
    :cond_5
    move v0, v2

    .line 2114
    goto/16 :goto_0

    .line 2157
    .restart local v0       #WifiAPflightenable:Z
    :cond_6
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V

    goto :goto_1
.end method

.method public declared-synchronized setWifidisplayEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    .line 2055
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2056
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifidisplayEnabled enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    if-eqz p1, :cond_3

    .line 2059
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2068
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiStateMachine;->setWifidisplayEnabled(Z)V

    .line 2076
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eq p1, v2, :cond_1

    .line 2077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2078
    .local v0, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 2079
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2082
    .end local v0           #ident:J
    :cond_1
    if-eqz p1, :cond_4

    .line 2083
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v2, :cond_2

    .line 2085
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 2086
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 2088
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkScreenOffSavedAndDoCommand()V

    .line 2097
    :cond_2
    :goto_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFDSTA (mIfWiFiRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIfWiFiHostpotRegBastReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiHotspotRegBastReceiver:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    monitor-exit p0

    return v5

    .line 2061
    :cond_3
    :try_start_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_0

    .line 2062
    const-string v2, "WifiService"

    const-string v3, "[C+W] setWifiEnabledPersist startCWDRegister++"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 2064
    const-string v2, "WifiService"

    const-string v3, "[C+W] setWifiEnabledPersist startCWDRegister--"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2055
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2094
    :cond_4
    const/4 v2, 0x3

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->checkAndUnregisterReceiver(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startDongleScan()V
    .locals 1

    .prologue
    .line 2189
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2190
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startDongleScan()V

    .line 2191
    return-void
.end method

.method public startDongleSingleCscan(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 2194
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2195
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startDongleSingleCscan(I)V

    .line 2196
    return-void
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2204
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2205
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startDongleWakeUp(Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method public startScan(Z)V
    .locals 6
    .parameter "forceActive"

    .prologue
    .line 1596
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1599
    .local v1, uid:I
    const/4 v0, 0x0

    .line 1600
    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    monitor-enter v3

    .line 1601
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1602
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1604
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1607
    return-void

    .line 1605
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startVHScan()Z
    .locals 2

    .prologue
    .line 4675
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v0, :cond_0

    .line 4676
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setVHScanCommand(Z)Z

    move-result v0

    .line 4678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 2507
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2513
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2515
    iget-object v0, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2517
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 2521
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 2522
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 2523
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - mAutoEnableWifiApInDockMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAutoEnableWifiInDockMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return-void
.end method

.method public declared-synchronized startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 2021
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    monitor-exit p0

    return-void

    .line 2021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVHScan()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4686
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v1, :cond_0

    .line 4687
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateMachine;->setVHScanCommand(Z)Z

    move-result v0

    .line 4689
    :cond_0
    return v0
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 2532
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2537
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2539
    iget-object v0, p0, Lcom/android/server/WifiService;->mStopWifiRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2541
    return-void
.end method

.method public declared-synchronized stopWpsRegistrar()V
    .locals 1

    .prologue
    .line 2025
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->stopWpsRegistrar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    monitor-exit p0

    return-void

    .line 2025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryTostartCWDeRegister()V
    .locals 2

    .prologue
    .line 2373
    const-string v0, "WifiService"

    const-string v1, "[C+W] wifiservice tryTostartCWDeRegister++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 2375
    const-string v0, "WifiService"

    const-string v1, "[C+W] wifiservice tryTostartCWDeRegister--"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 3427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3428
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3429
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3430
    const/4 p2, 0x0

    .line 3432
    :cond_0
    if-eqz p2, :cond_1

    .line 3433
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3435
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3437
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3438
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$7000(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 3439
    .local v2, index:I
    if-gez v2, :cond_2

    .line 3440
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3446
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3447
    :catch_0
    move-exception v6

    .line 3449
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    return-void

    .line 3442
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$5900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 3443
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3444
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 3445
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3446
    monitor-exit v7

    goto :goto_0

    .line 3444
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3449
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
