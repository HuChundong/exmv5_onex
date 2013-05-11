.class final Lcom/android/server/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# instance fields
.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final DEFAULT_TRANSITION_DELAY:I

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field private mBatteryLevel:I

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnableBrighterOnly:Z

.field private mEnableOffHookMode:Z

.field private mEnteringLcdValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mMaxBacklightValue:I

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPhoneState:Ljava/lang/String;

.field private mPowerSaverMode:Z

.field private mScreenState:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 6
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    const/16 v5, 0x7f

    const/16 v4, 0x14

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v1, "HtcAutoBrightnessCtrl"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 35
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 37
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 39
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 43
    const-string v1, "entering.screen.brightness"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 45
    const-string v1, "backlight.delay"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 48
    const v1, 0xea60

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 50
    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 52
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 54
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 55
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 57
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 58
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 67
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 70
    iput v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 72
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 73
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 75
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 76
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    .line 77
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    .line 290
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 82
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "Constructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 90
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    .line 101
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method private checkOffHookMode()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 396
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 397
    .local v1, IS_OFF_HOOK:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v0

    .line 399
    .local v0, CURRENT_LCD_VALUE:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 400
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOffHookMode:, mPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatteryLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBrighterOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CUR_LCD_VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-gt v2, v6, :cond_3

    .line 409
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 411
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 412
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 413
    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "checkOffHookMode: Disable mEnableBrighterOnly mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 419
    if-le v0, v8, :cond_2

    .line 420
    invoke-direct {p0, v8, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    .line 426
    :cond_2
    :goto_0
    return-void

    .line 422
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-le v2, v6, :cond_2

    .line 423
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 424
    invoke-direct {p0, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 510
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoBrightnessEnabled: [SettingNotFoundException]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 254
    move v0, p1

    .line 256
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 258
    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 260
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly: mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnteringLcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    return v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 567
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 568
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 569
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    .line 573
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 5

    .prologue
    .line 514
    const/16 v0, 0x7f

    .line 516
    .local v0, currentLcdValue:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getManualBrightness: [SettingNotFoundException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMaxBacklightValue()I
    .locals 5

    .prologue
    .line 537
    :try_start_0
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 538
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 548
    :goto_0
    return v3

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 542
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 543
    .local v1, mLcdBacklightValues:[I
    const/4 v3, 0x4

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v1           #mLcdBacklightValues:[I
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAutoBrightnessCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getOffHookLcdValue(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    const/16 v2, 0x7f

    .line 273
    const/16 v0, 0x7f

    .line 274
    .local v0, HALF_BRIGHTNESS:I
    move v1, p1

    .line 276
    .local v1, newLcdValue:I
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v3, :cond_1

    .line 277
    if-le v1, v2, :cond_0

    move v1, v2

    .line 279
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 280
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOffHook: mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    return v1
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 232
    move v0, p1

    .line 234
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 239
    :cond_0
    mul-int/lit8 v0, v0, 0x1

    .line 241
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 242
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPS: mPSM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    return v0
.end method

.method private getValidDelay(I)I
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0x10

    .line 530
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 531
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 532
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 524
    if-le p1, v1, :cond_0

    move p1, v1

    .line 525
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 526
    :cond_1
    return p1
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 552
    const/4 v0, 0x1

    .line 554
    .local v0, keyguardLocked:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 558
    :goto_0
    if-eqz v0, :cond_0

    .line 559
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "isKeyguardLocked: Keyguard is locked, skip request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 562
    :cond_0
    return v0

    .line 555
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 441
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    if-nez v0, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 449
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, manualBrightness:I
    if-eqz v0, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v3, p1, 0x28

    invoke-virtual {v2, v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    .line 463
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 464
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset: AUTO_BRIGHTNESS_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", manualBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_3
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 460
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_1
.end method

.method private setBacklight(II)V
    .locals 5
    .parameter "targetLcdValue"
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    .line 472
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 474
    .local v0, noTransition:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 475
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip. target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", noTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    :goto_1
    return-void

    .end local v0           #noTransition:Z
    :cond_1
    move v0, v1

    .line 472
    goto :goto_0

    .line 484
    .restart local v0       #noTransition:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 485
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", noTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_3
    if-lez p1, :cond_0

    .line 495
    if-eqz v0, :cond_4

    .line 496
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 498
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 499
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    mul-int/lit8 v2, p2, 0x28

    invoke-virtual {v1, p1, v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 197
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 198
    .local v1, PREV_POWER_MODE:Z
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 199
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    const/4 v2, -0x1

    .line 201
    .local v2, newLcdValue:I
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 203
    if-nez v1, :cond_3

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    .line 213
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_2

    .line 214
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 215
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPSM: mPSM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", AUTO_BRIGHTNESS_MODE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newLcdValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 224
    if-lez v2, :cond_2

    .line 226
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    .line 229
    :cond_2
    return-void

    .line 205
    :cond_3
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_0

    .line 206
    if-eqz v0, :cond_4

    .line 207
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    goto :goto_0

    .line 209
    :cond_4
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected getCtrlAutoBrightnessValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 110
    move v0, p1

    .line 112
    .local v0, newLcdValue:I
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    .line 115
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 119
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlAutoBrightnessValue: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1
.end method

.method protected getCtrlScreenOnLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 161
    move v0, p1

    .line 164
    .local v0, newLcdValue:I
    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    .line 168
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 170
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 172
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlScreenOn: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return v0
.end method

.method protected getCtrlSetBacklightBrightness(I)I
    .locals 6
    .parameter "lcdValue"

    .prologue
    .line 131
    move v0, p1

    .line 133
    .local v0, newLcdValue:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-nez v2, :cond_0

    .line 134
    int-to-float v2, v0

    const/high16 v3, 0x437f

    div-float v1, v2, v3

    .line 135
    .local v1, ratio:F
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 137
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 138
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCtrlSetBacklightBrightness: mPSM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ratio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1           #ratio:F
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_1

    .line 147
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 149
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCtrlSetBacklightBrightness: mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v2

    return v2
.end method

.method protected screenState(Z)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 189
    if-nez p1, :cond_0

    .line 191
    iput-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 192
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    .line 194
    :cond_0
    return-void
.end method
