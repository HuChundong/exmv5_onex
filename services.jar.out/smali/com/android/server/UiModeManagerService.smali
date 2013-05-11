.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$SettingsObserver;,
        Lcom/android/server/UiModeManagerService$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DMB_DONGLE_ENABLED:Ljava/lang/String; = "uimode_dmb_enabled"

.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final IS_SET_DESK_DOCK_PREFERRED:Ljava/lang/String; = "is_set_desk_dock_preferred"

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private final ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

.field private final HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

.field private final HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

.field private final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private final mDefaultUiModeType:I

.field private mDeskDockDimScreenValue:I

.field private mDeskModeEnabled:Z

.field private final mDeskModeKeepsScreenOn:Z

.field private mDmbDongleEnabled:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private final mHtcQuickbootModeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field mNormalType:I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTelevision:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbIsCarDockStateChanged:Z

.field private mbIsGoogleCarPanelAppExisting:Z

.field private mbIsHtcDockModeAppExist:Z

.field private mbIsHtcSetupWizardInstalled:Z

.field private mbIsKeepsScreenOn4DeskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    .line 76
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 434
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    iput v10, p0, Lcom/android/server/UiModeManagerService;->mNormalType:I
    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 105
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 106
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 108
    iput v10, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 109
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 111
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 114
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 117
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 124
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 125
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 127
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 128
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 142
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 145
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 151
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 152
    const-string v1, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

    .line 153
    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 155
    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 157
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 159
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 161
    const-string v1, "com.htc.android.htcsetupwizard"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 162
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 164
    const-string v1, "com.htc.dockmode"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_PACKAGE_NAME:Ljava/lang/String;

    .line 165
    const-string v1, "com.htc.dockmode.DockNotifyActivity"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_DOCKAPP_CLASS_NAME:Ljava/lang/String;

    .line 181
    new-instance v1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHtcQuickbootModeReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v1, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 376
    new-instance v1, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    .line 1270
    new-instance v1, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 435
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    .line 437
    const-string v1, "uimode"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 439
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 441
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 443
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHtcQuickbootModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 451
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/server/UiModeManagerService$Injector;->registerUIModeScaleChangedOjbserver(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 455
    .local v7, powerManager:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 457
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 460
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v5, v1, Landroid/content/res/Configuration;->fontsize:I

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_1

    move v1, v10

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0012

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 476
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_night_mode"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 481
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v11, "deskdock_dim_screen"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 484
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 485
    new-instance v9, Lcom/android/server/UiModeManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    .line 486
    .local v9, settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 491
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 493
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    .line 500
    :cond_0
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    .line 501
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/UiModeManagerService$SettingsObserver;
    :cond_1
    move v1, v5

    .line 469
    goto :goto_0

    :cond_2
    move v1, v5

    .line 471
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->launchHtcLocations()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->exitCurrentModeIfAny(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/UiModeManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->launchHtcDockMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->exitHtcLocations()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1176
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1177
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1185
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_1

    .line 1186
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1191
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_2

    .line 1192
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3

    .line 1197
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 1198
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1200
    .local v0, carModeOffIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1201
    .local v1, n:Landroid/app/Notification;
    const v2, 0x1080505

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1202
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1203
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1204
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 1205
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040488

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040489

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1210
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1215
    .end local v0           #carModeOffIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v3

    .line 1186
    goto :goto_0

    .line 1212
    :cond_5
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private adjustStatusBarDeskModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1219
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1220
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1238
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    .line 1239
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1245
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v2, :cond_2

    .line 1246
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    .line 1248
    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1250
    .local v0, deskModeHomeIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1251
    .local v1, n:Landroid/app/Notification;
    const v2, 0x4020063

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 1252
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1253
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1254
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 1255
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x4070098

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x4070099

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1260
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1267
    .end local v0           #deskModeHomeIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_2
    :goto_0
    return-void

    .line 1264
    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    return-object v0
.end method

.method private checkAppPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .parameter "strAppPackage"

    .prologue
    const/4 v6, 0x0

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 915
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 916
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 919
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 922
    const/4 v6, 0x1

    .line 927
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private exitCurrentModeIfAny(I)V
    .locals 5
    .parameter "nNewEnteringMode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 881
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 882
    .local v0, nCurModeType:I
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_0

    if-eq p1, v4, :cond_0

    .line 885
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableDeskMode(I)V

    .line 887
    :cond_0
    and-int/lit8 v1, v0, 0x3

    if-ne v1, v3, :cond_1

    if-eq p1, v3, :cond_1

    .line 890
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_2

    .line 895
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    .line 897
    :cond_2
    return-void
.end method

.method private exitHtcLocations()V
    .locals 2

    .prologue
    .line 850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method private getAutoLaunchCarDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 755
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 756
    :goto_0
    return v1

    .line 755
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoLaunchDeskDock(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, value:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_auto_launch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 765
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 766
    :goto_0
    return v1

    .line 765
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimScreenTimeoutValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasOOBEState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 855
    if-nez p1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v0

    .line 858
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final isDeskDockState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 734
    packed-switch p0, :pswitch_data_0

    .line 740
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 738
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isGoogleCarPanelExisting(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 812
    const/4 v8, 0x0

    .line 813
    .local v8, result:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 815
    .local v5, nTimeBegin:J
    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 817
    .local v7, packageMgr:Landroid/content/pm/PackageManager;
    if-nez v7, :cond_0

    move v9, v8

    .line 841
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 819
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v4, intent:Landroid/content/Intent;
    const v10, 0x10080

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 822
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    .line 824
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 826
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 828
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.dock_home"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 829
    .local v1, bMetaDataValue:Z
    if-eqz v1, :cond_1

    .line 831
    const/4 v8, 0x1

    .end local v1           #bMetaDataValue:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v9, v8

    .line 841
    .restart local v9       #result:I
    goto :goto_0
.end method

.method private isHtcDockModeAppExisting(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 866
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 867
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 869
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 870
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.htc.dockmode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 871
    sget-boolean v4, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v4, :cond_1

    .line 872
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Htc DockMode App is installed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_1
    const/4 v4, 0x1

    .line 876
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_2
    return v4
.end method

.method private isHtcLocationExisting(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 795
    .local v3, nTimeBegin:J
    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 796
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 798
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 799
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.htc.laputa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 802
    const/4 v6, 0x1

    .line 807
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v6
.end method

.method private launchHtcDockMode(Z)V
    .locals 3
    .parameter "nDocked"

    .prologue
    .line 900
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Landroid/app/UiModeManager;->ACTION_DOCKMODE_SENSE40:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 903
    .local v1, nEventType:I
    if-eqz p1, :cond_0

    .line 904
    const/4 v1, 0x0

    .line 908
    :goto_0
    sget-object v2, Landroid/app/UiModeManager;->EVENT_TYPE_DOCK_MODE_SENSE40:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 910
    return-void

    .line 906
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private launchHtcLocations()V
    .locals 3

    .prologue
    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, naviIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method private setDockModePreferredActivity()V
    .locals 12

    .prologue
    .line 505
    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 506
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 507
    sget-object v9, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v10, "Not set preferred activity due to the instance of PackageManager is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const/high16 v9, 0x1

    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 513
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 514
    .local v2, count:I
    if-eqz v2, :cond_0

    .line 516
    new-array v1, v2, [Landroid/content/ComponentName;

    .line 518
    .local v1, components:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 520
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 521
    .local v8, r:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_3

    .line 518
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 524
    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v1, v4

    goto :goto_2

    .line 527
    .end local v8           #r:Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 530
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 531
    new-instance v3, Landroid/content/ComponentName;

    const-string v9, "com.htc.dockmode"

    const-string v10, "com.htc.dockmode.DockNotifyActivity"

    invoke-direct {v3, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v3, dockapp:Landroid/content/ComponentName;
    const-string v9, "com.htc.dockmode"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 533
    const v9, 0x108000

    invoke-virtual {v7, v6, v9, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 544
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 546
    sget-boolean v0, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "updateLocked, enter: disableCarMode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 549
    :cond_1
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableDeskMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 569
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 571
    sget-boolean v0, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "updateLocked, enter: disableDeskMode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 574
    :cond_1
    monitor-exit v1

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const-string v0, " mDockState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1469
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1470
    const-string v0, " mNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1471
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1472
    const-string v0, " mComputedNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1473
    const-string v0, " mCurUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    const-string v0, " mHoldingConfiguration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1476
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1477
    const-string v0, " mDeskDockDimScreenValue="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1478
    const-string v0, " mDeskModeKeepsScreenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1479
    const-string v0, " mCarModeKeepsScreenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1481
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 1482
    const-string v0, "  mLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1484
    :cond_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableCarMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 554
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->exitCurrentModeIfAny(I)V

    .line 556
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 558
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 560
    sget-boolean v0, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "updateLocked, enter: enableCarMode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 563
    :cond_1
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDeskMode(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 579
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->exitCurrentModeIfAny(I)V

    .line 581
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 583
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 585
    sget-boolean v0, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "updateLocked, enter: enableDeskMode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 588
    :cond_1
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentModeType()I
    .locals 2

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v0, 0xf

    monitor-exit v1

    return v0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDockState()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return v0
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 671
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 673
    :cond_0
    return-void
.end method

.method setDeskModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 678
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 680
    :cond_0
    return-void
.end method

.method setDmbDongleLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eq v0, p1, :cond_0

    .line 686
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 688
    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 600
    packed-switch p1, :pswitch_data_0

    .line 606
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 608
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    monitor-exit v3

    .line 621
    :goto_0
    return-void

    .line 612
    :cond_0
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_1

    .line 613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 614
    .local v0, ident:J
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 618
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 620
    .end local v0           #ident:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 628
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 629
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 630
    iget v5, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 632
    iget v5, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    .line 636
    iget v5, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    .line 637
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "uimode_dmb_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_set_desk_dock_preferred"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 642
    .local v2, isSetDeskDockPreferred:I
    if-nez v2, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->setDockModePreferredActivity()V

    .line 644
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_set_desk_dock_preferred"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, isEncrypted:Z
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, cryptState:Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 653
    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Detected encryption in progress"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x1

    .line 659
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    monitor-exit v6

    .line 663
    :goto_3
    return-void

    .end local v0           #cryptState:Ljava/lang/String;
    .end local v1           #isEncrypted:Z
    .end local v2           #isSetDeskDockPreferred:I
    :cond_2
    move v5, v4

    .line 630
    goto :goto_0

    :cond_3
    move v3, v4

    .line 636
    goto :goto_1

    .line 655
    .restart local v0       #cryptState:Ljava/lang/String;
    .restart local v1       #isEncrypted:Z
    .restart local v2       #isSetDeskDockPreferred:I
    :cond_4
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Device encrypted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v1, 0x1

    goto :goto_2

    .line 661
    :cond_5
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 662
    monitor-exit v6

    goto :goto_3

    .end local v0           #cryptState:Ljava/lang/String;
    .end local v1           #isEncrypted:Z
    .end local v2           #isSetDeskDockPreferred:I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4
    .parameter "sendIt"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 932
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    .line 934
    .local v1, uiMode:I
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_3

    .line 935
    const/4 v1, 0x3

    .line 941
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    .line 942
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_5

    .line 943
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 944
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    :goto_2
    or-int/2addr v1, v2

    .line 955
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eqz v2, :cond_7

    .line 984
    :cond_1
    :goto_4
    return-void

    .line 932
    .end local v1           #uiMode:I
    :cond_2
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNormalType:I

    goto :goto_0

    .line 937
    .restart local v1       #uiMode:I
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_0

    .line 939
    const/4 v1, 0x2

    goto :goto_1

    .line 944
    :cond_4
    const/16 v2, 0x10

    goto :goto_2

    .line 947
    :cond_5
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_3

    .line 951
    :cond_6
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_3

    .line 970
    :cond_7
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 972
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    .line 973
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 974
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 976
    if-eqz p1, :cond_1

    .line 978
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method updateDockState(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 692
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 693
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_7

    .line 694
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 695
    .local v0, mOldDockState:I
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 698
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_0

    .line 699
    monitor-exit v4

    .line 731
    .end local v0           #mOldDockState:I
    :goto_0
    return-void

    .line 702
    .restart local v0       #mOldDockState:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_1

    .line 703
    monitor-exit v4

    goto :goto_0

    .line 730
    .end local v0           #mOldDockState:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 707
    .restart local v0       #mOldDockState:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchCarDock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_2

    .line 708
    monitor-exit v4

    goto :goto_0

    .line 711
    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchDeskDock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v1, :cond_4

    .line 712
    monitor-exit v4

    goto :goto_0

    .line 714
    :cond_4
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_8

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 716
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 720
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_9

    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDmbDongleLocked(Z)V

    .line 722
    if-ne v0, v5, :cond_a

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 723
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_6

    .line 725
    sget-boolean v1, Lcom/android/server/UiModeManagerService;->localLOGV:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready to enter updateLocked, updateDockState ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 728
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    .line 730
    .end local v0           #mOldDockState:I
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .restart local v0       #mOldDockState:I
    :cond_8
    move v3, v2

    .line 714
    goto :goto_1

    :cond_9
    move v3, v2

    .line 720
    goto :goto_2

    :cond_a
    move v1, v2

    .line 722
    goto :goto_3
.end method

.method final updateLocked(II)V
    .locals 16
    .parameter "enableFlags"
    .parameter "disableFlags"

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 990
    .local v12, ident:J
    const/4 v9, 0x0

    .line 991
    .local v9, action:Ljava/lang/String;
    const/4 v15, 0x0

    .line 992
    .local v15, oldAction:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 994
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 1015
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_9

    .line 1016
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 1018
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isGoogleCarPanelExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    .line 1019
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_2

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1023
    if-eqz v15, :cond_1

    .line 1024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    :cond_1
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1027
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 1071
    :cond_2
    :goto_1
    if-eqz v9, :cond_12

    .line 1084
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v2, intent:Landroid/content/Intent;
    const-string v1, "enableFlags"

    move/from16 v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const-string v1, "disableFlags"

    move/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1092
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1137
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_16

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_16

    .line 1171
    :cond_4
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1173
    return-void

    .line 995
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 997
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_6

    .line 999
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 1002
    :cond_6
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1005
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 1006
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1010
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-nez v1, :cond_0

    .line 1011
    sget-object v15, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 1034
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_f

    .line 1036
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcDockModeAppExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_c

    .line 1042
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    .line 1050
    :goto_5
    if-eqz v15, :cond_a

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    :cond_a
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1054
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 1042
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 1048
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_e

    :cond_d
    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1171
    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1048
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 1057
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eqz v1, :cond_11

    .line 1058
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 1059
    if-eqz v15, :cond_10

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1062
    :cond_10
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1063
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 1067
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1068
    move-object v9, v15

    goto/16 :goto_1

    .line 1094
    :cond_12
    const/4 v11, 0x0

    .line 1095
    .local v11, homeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_14

    .line 1096
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_13

    .line 1128
    :cond_13
    :goto_7
    if-eqz v11, :cond_3

    .line 1130
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1131
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 1107
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_15

    .line 1109
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_13

    .line 1111
    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_7

    .line 1114
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_13

    .line 1118
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_13

    .line 1119
    const-string v1, "android.intent.category.HOME"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_7

    .line 1145
    .end local v11           #homeIntent:Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_4

    .line 1151
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 1155
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_PROJECT_flag()S

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    const/4 v10, 0x1

    .line 1157
    .local v10, bIsATTSku:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_17

    if-eqz v10, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    if-eqz v1, :cond_1a

    if-nez v10, :cond_1a

    :cond_18
    const/4 v14, 0x1

    .line 1163
    .local v14, keepScreenOn:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v14, v1, :cond_4

    .line 1164
    if-eqz v14, :cond_1b

    .line 1165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_3

    .line 1155
    .end local v10           #bIsATTSku:Z
    .end local v14           #keepScreenOn:Z
    :cond_19
    const/4 v10, 0x0

    goto :goto_8

    .line 1157
    .restart local v10       #bIsATTSku:Z
    :cond_1a
    const/4 v14, 0x0

    goto :goto_9

    .line 1167
    .restart local v14       #keepScreenOn:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method updateTwilightLocked()V
    .locals 17

    .prologue
    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    .line 1453
    :goto_0
    return-void

    .line 1411
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1414
    .local v2, currentTime:J
    new-instance v1, Lcom/android/server/TwilightCalculator;

    invoke-direct {v1}, Lcom/android/server/TwilightCalculator;-><init>()V

    .line 1415
    .local v1, tw:Lcom/android/server/TwilightCalculator;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1417
    iget v4, v1, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v4, :cond_2

    .line 1418
    const/4 v14, 0x0

    .line 1424
    .local v14, nightMode:Z
    :goto_1
    const-wide/16 v12, 0x0

    .line 1425
    .local v12, nextUpdate:J
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1427
    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v12, v2, v4

    .line 1446
    :goto_2
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v16, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1449
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12, v13, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1452
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    .line 1420
    .end local v12           #nextUpdate:J
    .end local v14           #nightMode:Z
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    .end local v16           #updateIntent:Landroid/content/Intent;
    :cond_2
    const/4 v14, 0x1

    .restart local v14       #nightMode:Z
    goto :goto_1

    .line 1429
    .restart local v12       #nextUpdate:J
    :cond_3
    iget v11, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 1431
    .local v11, mLastTwilightState:I
    const-wide/32 v4, 0xea60

    add-long/2addr v12, v4

    .line 1432
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 1434
    const-wide/32 v4, 0x5265c00

    add-long v5, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 1439
    :cond_4
    const/4 v4, 0x1

    if-ne v11, v4, :cond_5

    .line 1440
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long/2addr v12, v4

    goto :goto_2

    .line 1442
    :cond_5
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long/2addr v12, v4

    goto :goto_2
.end method
