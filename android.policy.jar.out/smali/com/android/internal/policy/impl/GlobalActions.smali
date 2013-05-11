.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static IMS_REGISTRATION:Ljava/lang/String; = null

.field private static IMS_REG_STATUS:Ljava/lang/String; = null

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SENDER:Ljava/lang/String; = "GlobalActionsMobileDataEnabler"

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private imsRegistered:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

.field private mSimReady:Z

.field private mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    .line 132
    const-string v0, ""

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 122
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 123
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 125
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 126
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 133
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    .line 1369
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$10;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1431
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1477
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1486
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$13;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1502
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$14;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 150
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    :try_start_0
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REGISTRATION"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    .line 162
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "IMS_REG_STATUS"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    .line 163
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 176
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 179
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 182
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 184
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 185
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 189
    .local v4, vibrator:Landroid/os/Vibrator;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 190
    return-void

    .line 165
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v4       #vibrator:Landroid/os/Vibrator;
    :cond_1
    move v5, v7

    .line 189
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REGISTRATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->IMS_REG_STATUS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->imsRegistered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSimReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1543
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1548
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneModeSystemSetting, set AirplaneMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1552
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1553
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1554
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1555
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1557
    :cond_0
    return-void

    .line 1543
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1555
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 24

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 259
    :goto_0
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v5, 0x402002a

    const v6, 0x402002a

    const v7, 0x104013e

    const v8, 0x104013f

    const v9, 0x1040140

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 316
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v5, 0x402003f

    const v6, 0x402003f

    const v7, 0x4070029

    const v8, 0x4070028

    const v9, 0x4070027

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 347
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v5, 0x402003d

    const v6, 0x402003d

    const v7, 0x407002a

    const v8, 0x407002c

    const v9, 0x407002b

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_power_off_status"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 407
    .local v17, powerOffStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 408
    .local v20, restartText:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "powerOptions_restart_status"

    const-string v5, "string"

    const-string v6, "com.htc.framework"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 410
    .local v19, restartStatus:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v5, 0x402003e

    const v6, 0x104013a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v4, v0, v5, v6, v1}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v5, 0x4020044

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v17           #powerOffStatus:I
    .end local v19           #restartStatus:I
    .end local v20           #restartText:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getUsers()Ljava/util/List;

    move-result-object v23

    .line 587
    .local v23, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    .line 590
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 594
    .local v12, currentUser:Landroid/content/pm/UserInfo;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 595
    .local v22, user:Landroid/content/pm/UserInfo;
    if-nez v12, :cond_4

    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_3

    const/16 v16, 0x1

    .line 597
    .local v16, isCurrentUser:Z
    :goto_4
    new-instance v21, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v4, 0x108031d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v16, :cond_7

    const-string v3, " \u2714"

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 618
    .local v21, switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 257
    .end local v12           #currentUser:Landroid/content/pm/UserInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isCurrentUser:Z
    .end local v21           #switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v22           #user:Landroid/content/pm/UserInfo;
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    goto/16 :goto_0

    .line 497
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd1

    if-ne v3, v4, :cond_2

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v5, 0x402003d

    const v6, 0x104013a

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 526
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v5, 0x402003d

    const v6, 0x104013a

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 591
    .restart local v23       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v18

    .line 592
    .local v18, re:Landroid/os/RemoteException;
    const/4 v12, 0x0

    .restart local v12       #currentUser:Landroid/content/pm/UserInfo;
    goto/16 :goto_2

    .line 595
    .end local v18           #re:Landroid/os/RemoteException;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v22       #user:Landroid/content/pm/UserInfo;
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_4
    iget v3, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v4, :cond_5

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 597
    .restart local v16       #isCurrentUser:Z
    :cond_6
    const-string v3, "Primary"

    goto/16 :goto_5

    :cond_7
    const-string v3, ""

    goto/16 :goto_6

    .line 622
    .end local v12           #currentUser:Landroid/content/pm/UserInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isCurrentUser:Z
    .end local v22           #user:Landroid/content/pm/UserInfo;
    :cond_8
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 624
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v11, ab:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_actions"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 635
    .local v15, idTitle:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v11, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 639
    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v13

    .line 641
    .local v13, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 642
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 643
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 651
    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 653
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 659
    :cond_9
    return-object v13

    .line 632
    .end local v13           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v15           #idTitle:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "global_actions"

    const-string v5, "string"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .restart local v15       #idTitle:I
    goto :goto_7
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1560
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 1561
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1562
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1564
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 246
    return-void
.end method

.method private isSense2Mode()Z
    .locals 3

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1570
    .local v0, bRet:Z
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1571
    .local v1, version:F
    const v2, 0x3fcccccd

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 1572
    const/4 v0, 0x1

    .line 1574
    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1529
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1535
    .local v0, airplaneModeOn:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1536
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_1
    move v0, v1

    .line 1531
    goto :goto_1

    .line 1535
    .restart local v0       #airplaneModeOn:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 663
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    .line 664
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 667
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 669
    .local v2, vibrationModeOn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVibrationModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 673
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_4

    .line 674
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 683
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 686
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 687
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_7

    .line 688
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 693
    :goto_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 698
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 703
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSense2Mode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateDialogSelector()V

    .line 706
    :cond_1
    return-void

    .line 667
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #vibrationModeOn:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 669
    .restart local v2       #vibrationModeOn:Z
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    .line 676
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_0

    .line 678
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 679
    .local v1, mobileNetworkModeOn:Z
    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_5
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMobileNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_5

    .line 690
    .end local v1           #mobileNetworkModeOn:Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_3

    .line 700
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "global_actions"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    goto :goto_4
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 737
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 740
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 743
    .end local v0           #silentModeOn:Z
    :cond_0
    return-void

    .line 738
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 740
    .restart local v0       #silentModeOn:Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private updateDialogSelector()V
    .locals 10

    .prologue
    .line 710
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v6, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    const-string v6, "GlobalActions"

    const-string v7, "updateDialogSelector()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 716
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 717
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 718
    .local v3, skinPackage:Ljava/lang/String;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_2

    const-string v6, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDialogSelector(), skinPackage == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 721
    .local v5, version:F
    const/high16 v6, 0x4080

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    .line 722
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 723
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 724
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const-string v7, "list_selector_background"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(I)V

    goto :goto_0

    .line 731
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #skinPackage:Ljava/lang/String;
    .end local v5           #version:F
    :catch_0
    move-exception v6

    goto :goto_0

    .line 726
    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v3       #skinPackage:Ljava/lang/String;
    .restart local v5       #version:F
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 727
    .local v4, themeres:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const-string v7, "list_selector_background"

    const-string v8, "drawable"

    invoke-virtual {v4, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 755
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 758
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 750
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 761
    packed-switch p2, :pswitch_data_0

    .line 766
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 763
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 198
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_0
.end method
