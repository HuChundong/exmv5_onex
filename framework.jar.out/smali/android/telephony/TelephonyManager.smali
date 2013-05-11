.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/telephony/HtcIfTelephonyManager;
# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$Injector;
    }
.end annotation

# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5

.field public static final ICC_STATE_UNKNOWN:I = 0x0

.field public static final ICC_TYPE_2G:I = 0x2

.field public static final ICC_TYPE_3G:I = 0x3

.field public static final ICC_TYPE_NO_ICC:I = 0x1

.field public static final ICC_TYPE_SIM:I = 0x1

.field public static final ICC_TYPE_SUB_ICC:I = 0x3

.field public static final ICC_TYPE_TITAN_LITE_SIM_CARD:I = 0x4

.field public static final ICC_TYPE_UIM:I = 0x2

.field public static final ICC_TYPE_UNKNOW:I = 0x0

.field public static final ICC_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIMAX:I = 0x10

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phone_type"

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_SUB_GSM:I = 0x5

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x2

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x5

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x4

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x8

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x9

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x3

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x1

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x6

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x7

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_NETWORK_SEARCHING:I = 0x4

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private mthGetHtcNetworkType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 89
    sput-object p1, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 94
    const-string v0, "TelephonyManager"

    const-string v1, "Hidden constructor called more than once per process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ctFeatureEnable()Z
    .locals 1

    .prologue
    .line 3173
    const/4 v0, 0x0

    return v0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 1

    .prologue
    .line 3218
    const/4 v0, 0x0

    return v0
.end method

.method public static dualPhoneEnable()Z
    .locals 1

    .prologue
    .line 3055
    const/4 v0, 0x0

    return v0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefMainPhoneType()I
    .locals 1

    .prologue
    .line 3066
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefSubPhoneType()I
    .locals 1

    .prologue
    .line 3076
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 3177
    const/4 v0, 0x0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1383
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneType()I
    .locals 1

    .prologue
    .line 3086
    const/4 v0, 0x0

    return v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 621
    packed-switch p0, :pswitch_data_0

    .line 641
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 627
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 637
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 639
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 658
    packed-switch p0, :pswitch_data_0

    .line 694
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 660
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 662
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 664
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 666
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 668
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 670
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 672
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 674
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 676
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 678
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 680
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 682
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 684
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 686
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 688
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 691
    :pswitch_f
    const-string v0, "WIMAX"

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 1
    .parameter "phoneName"

    .prologue
    .line 3124
    const/4 v0, 0x0

    return v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 437
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 438
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 439
    const/4 v1, 0x0

    .line 440
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 427
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, type:I
    return v0
.end method

.method public static getSubPhoneType()I
    .locals 1

    .prologue
    .line 3102
    const/4 v0, 0x0

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 1259
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getSubscriberInfoExt(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2993
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3164
    const/4 v0, 0x0

    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3137
    const/4 v0, 0x0

    return v0
.end method

.method public static setMainPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3091
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 3107
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2298
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    :goto_0
    return-void

    .line 2300
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2299
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2308
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    :goto_0
    return-void

    .line 2310
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2309
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2322
    :goto_0
    return-void

    .line 2320
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2319
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public checkTestIcc()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1753
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->checkTestIcc()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1757
    :goto_0
    return v1

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1756
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1757
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1765
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :goto_0
    return-void

    .line 1767
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1766
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2328
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    :goto_0
    return-void

    .line 2330
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2329
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1775
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1779
    :goto_0
    return v1

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1778
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1779
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2338
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2342
    :goto_0
    return v1

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2341
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2342
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2350
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2354
    :goto_0
    return v1

    .line 2351
    :catch_0
    move-exception v0

    .line 2352
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2353
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2354
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 317
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0

    .line 318
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2738
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    :goto_0
    return-void

    .line 2740
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2739
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2362
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2366
    :goto_0
    return v1

    .line 2363
    :catch_0
    move-exception v0

    .line 2364
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2365
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2366
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2374
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2378
    :goto_0
    return v1

    .line 2375
    :catch_0
    move-exception v0

    .line 2376
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2377
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2378
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 300
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2721
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    :goto_0
    return-void

    .line 2723
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2722
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableMpdp(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1787
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableMpdp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :goto_0
    return-void

    .line 1789
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1788
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2386
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2390
    :goto_0
    return v1

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2389
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2390
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getActiveCallConnectTime()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 1797
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActiveCallConnectTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 1801
    :goto_0
    return-wide v1

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1800
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1801
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1809
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActiveCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1813
    :goto_0
    return-object v1

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1812
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1813
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePDPList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1825
    :goto_0
    return-object v1

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1824
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1825
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getActivePhoneType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2398
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2402
    :goto_0
    return v1

    .line 2399
    :catch_0
    move-exception v0

    .line 2400
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2401
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2402
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3234
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3238
    :goto_0
    return-object v1

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3237
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3238
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1833
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getBackgroundCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1837
    :goto_0
    return-object v1

    .line 1834
    :catch_0
    move-exception v0

    .line 1835
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1836
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1837
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1555
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1560
    :goto_0
    return-object v1

    .line 1556
    :catch_0
    move-exception v0

    .line 1558
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1559
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1560
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1603
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumberFromOperator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1608
    :goto_0
    return-object v1

    .line 1604
    :catch_0
    move-exception v0

    .line 1606
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1607
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1608
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1279
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1285
    :goto_0
    return v1

    .line 1280
    :catch_0
    move-exception v0

    .line 1282
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1283
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1285
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3002
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3008
    :goto_0
    return v1

    .line 3003
    :catch_0
    move-exception v0

    .line 3005
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3006
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3008
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCardCheckedState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3209
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCardCheckedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3213
    :goto_0
    return v1

    .line 3210
    :catch_0
    move-exception v0

    .line 3211
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3212
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3213
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1434
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1439
    :goto_0
    return v1

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1438
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1439
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1452
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1457
    :goto_0
    return v1

    .line 1453
    :catch_0
    move-exception v0

    .line 1455
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1456
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1457
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1468
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1473
    :goto_0
    return-object v1

    .line 1469
    :catch_0
    move-exception v0

    .line 1471
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1472
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1473
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaNeedsProvisioning()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2494
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2498
    :goto_0
    return v1

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2497
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2498
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 279
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 285
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 282
    :catch_0
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 283
    goto :goto_0

    .line 284
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 285
    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2707
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1163
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1168
    :goto_0
    return-object v1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1166
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1168
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2946
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2951
    :goto_0
    return-object v1

    .line 2947
    :catch_0
    move-exception v0

    .line 2948
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2949
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2951
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentCallState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1845
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCurrentCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1849
    :goto_0
    return v1

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1848
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1849
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType()I
    .locals 3

    .prologue
    .line 367
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 368
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 381
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 372
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 374
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 377
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 378
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 381
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1315
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1321
    :goto_0
    return v1

    .line 1316
    :catch_0
    move-exception v0

    .line 1318
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1319
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3024
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3030
    :goto_0
    return v1

    .line 3025
    :catch_0
    move-exception v0

    .line 3027
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3028
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3030
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1351
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1356
    :goto_0
    return v1

    .line 1352
    :catch_0
    move-exception v0

    .line 1354
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1355
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1356
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3045
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3050
    :goto_0
    return v1

    .line 3046
    :catch_0
    move-exception v0

    .line 3048
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3049
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3050
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1857
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1861
    :goto_0
    return-object v1

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1860
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1861
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 232
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 263
    :goto_0
    return-object v3

    .line 237
    :cond_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-ne v4, v5, :cond_2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_2

    .line 242
    const-string v4, "htctelephonyinternal"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    .line 244
    .local v2, ihtcTel:Lcom/android/internal/telephony/IHtcTelephonyInternal;
    if-eqz v2, :cond_1

    .line 246
    const-string v4, "getIMEI"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v4, "getIMEI"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, result:Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v0           #bundleResult:Landroid/os/Bundle;
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    const-string v4, "TelephonyManager"

    const-string v5, "getDeviceId:ihtcTel is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v2           #ihtcTel:Lcom/android/internal/telephony/IHtcTelephonyInternal;
    :catch_0
    move-exception v1

    .line 261
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 257
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 262
    :catch_1
    move-exception v1

    .line 263
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1659
    :goto_0
    return-object v1

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1658
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1659
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2690
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2694
    :goto_0
    return-object v1

    .line 2691
    :catch_0
    move-exception v0

    .line 2692
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2693
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2694
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 217
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersionExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2673
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2677
    :goto_0
    return-object v1

    .line 2674
    :catch_0
    move-exception v0

    .line 2675
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2676
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2677
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGprsState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1369
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getGprsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1377
    :goto_0
    return v1

    .line 1371
    :catch_0
    move-exception v0

    .line 1373
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1375
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1377
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1869
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getGsmNetworkType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1873
    :goto_0
    return-object v1

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1872
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1873
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getHtcDeviceSlotType()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1620
    new-array v0, v4, [Ljava/lang/String;

    .line 1621
    .local v0, slotType:[Ljava/lang/String;
    aput-object v2, v0, v3

    .line 1622
    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1623
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_2

    .line 1626
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1628
    const-string v1, "NV"

    aput-object v1, v0, v3

    .line 1639
    :goto_0
    return-object v0

    .line 1632
    :cond_1
    const-string v1, "SIM"

    aput-object v1, v0, v3

    goto :goto_0

    .line 1637
    :cond_2
    const-string/jumbo v1, "ro.htc.device.slot1"

    const-string v2, "SIM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 3
    .parameter "stack"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1881
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcNetworkType([Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1885
    :goto_0
    return v1

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1884
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1885
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x3

    .line 3197
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcServiceStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3203
    :goto_0
    return v1

    .line 3198
    :catch_0
    move-exception v0

    .line 3200
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3201
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3203
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 967
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 968
    const-string v0, "gsm.gsm.sim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    :goto_0
    return-object v0

    .line 970
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 971
    const-string v0, "gsm.sub.icc.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 973
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 974
    const-string v0, "gsm.cdma.uim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_2
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 936
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 948
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 949
    const-string v0, "gsm.gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    :goto_0
    return-object v0

    .line 951
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 952
    const-string v0, "gsm.sub.icc.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 955
    const-string v0, "gsm.cdma.uim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 957
    :cond_2
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "iccType"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 991
    if-ne p1, v2, :cond_0

    .line 992
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    :goto_0
    return-object v1

    .line 994
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 995
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 997
    :cond_1
    if-ne p1, v3, :cond_2

    .line 998
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1000
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1005
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1007
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccState(I)I
    .locals 1
    .parameter "iccType"

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public getIccType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 720
    const-string v2, "gsm.sim.types"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, iccType:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    const/4 v1, 0x1

    .line 734
    :cond_0
    :goto_0
    return v1

    .line 724
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    const/4 v1, 0x2

    goto :goto_0

    .line 726
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    const/4 v1, 0x3

    goto :goto_0

    .line 728
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1893
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIncallRecordingFileName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1897
    :goto_0
    return-object v1

    .line 1894
    :catch_0
    move-exception v0

    .line 1895
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1896
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1897
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1231
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1236
    :goto_0
    return-object v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1234
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1215
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1220
    :goto_0
    return-object v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1218
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1220
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1248
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1253
    :goto_0
    return-object v1

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1251
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1253
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLastError()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2584
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2588
    :goto_0
    return v1

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2587
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2588
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1107
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1112
    :goto_0
    return-object v1

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1110
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1112
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1719
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1724
    :goto_0
    return-object v1

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1722
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1724
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2910
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2915
    :goto_0
    return-object v1

    .line 2911
    :catch_0
    move-exception v0

    .line 2912
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2913
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2915
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1073
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, line1number:Ljava/lang/String;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_0

    .line 1075
    if-eqz v1, :cond_0

    .line 1076
    const-string v3, "+1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1077
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1092
    .end local v1           #line1number:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1088
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1089
    goto :goto_0

    .line 1090
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1092
    goto :goto_0
.end method

.method public getLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1696
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1701
    :goto_0
    return-object v1

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1699
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1701
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2890
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2895
    :goto_0
    return-object v1

    .line 2891
    :catch_0
    move-exception v0

    .line 2892
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2893
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2895
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1024
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1030
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1027
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1028
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1030
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1127
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1132
    :goto_0
    return-object v1

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1130
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1132
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 336
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 3
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2754
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfoExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2758
    :goto_0
    return-object v1

    .line 2755
    :catch_0
    move-exception v0

    .line 2756
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2757
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2758
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2781
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2770
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 553
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mthGetHtcNetworkType:Ljava/lang/reflect/Method;

    if-nez v8, :cond_0

    .line 555
    :try_start_0
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 556
    .local v2, cls:Ljava/lang/Class;
    const-string v8, "getHtcNetworkType"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v2, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Landroid/telephony/TelephonyManager;->mthGetHtcNetworkType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 561
    .end local v2           #cls:Ljava/lang/Class;
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 562
    .local v7, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_4

    .line 565
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mthGetHtcNetworkType:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_3

    .line 566
    const/4 v6, 0x0

    .line 567
    .local v6, stringCallStack:[Ljava/lang/String;
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 568
    .local v1, callStack:[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_2

    .line 569
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    .line 570
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v1

    if-ge v4, v8, :cond_2

    .line 571
    aget-object v8, v1, v4

    if-eqz v8, :cond_1

    .line 572
    mul-int/lit8 v8, v4, 0x4

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    .line 573
    mul-int/lit8 v8, v4, 0x4

    add-int/lit8 v8, v8, 0x1

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    .line 574
    mul-int/lit8 v8, v4, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    .line 575
    mul-int/lit8 v8, v4, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 579
    .end local v4           #i:I
    :cond_2
    const/4 v5, 0x0

    .line 581
    .local v5, netType:Ljava/lang/Integer;
    :try_start_2
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mthGetHtcNetworkType:Ljava/lang/reflect/Method;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v8, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 583
    :goto_2
    if-eqz v5, :cond_3

    .line 584
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 598
    .end local v1           #callStack:[Ljava/lang/StackTraceElement;
    .end local v5           #netType:Ljava/lang/Integer;
    .end local v6           #stringCallStack:[Ljava/lang/String;
    .end local v7           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_3
    return v8

    .line 588
    .restart local v7       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v9

    .line 591
    goto :goto_3

    .line 593
    .end local v7           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .local v3, ex:Landroid/os/RemoteException;
    move v8, v9

    .line 595
    goto :goto_3

    .line 596
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .local v3, ex:Ljava/lang/NullPointerException;
    move v8, v9

    .line 598
    goto :goto_3

    .line 582
    .end local v3           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #callStack:[Ljava/lang/StackTraceElement;
    .restart local v5       #netType:Ljava/lang/Integer;
    .restart local v6       #stringCallStack:[Ljava/lang/String;
    .restart local v7       #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 557
    .end local v1           #callStack:[Ljava/lang/StackTraceElement;
    .end local v5           #netType:Ljava/lang/Integer;
    .end local v6           #stringCallStack:[Ljava/lang/String;
    .end local v7           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_3
    move-exception v8

    goto :goto_0
.end method

.method public getNetworkTypeExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x0

    .line 2814
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2815
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2816
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2826
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2821
    :catch_0
    move-exception v0

    .line 2823
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2824
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2826
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2838
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 3
    .parameter "profileSlot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1905
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPdnSettings(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1909
    :goto_0
    return-object v1

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1908
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1909
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPhoneType()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v2

    .line 400
    :cond_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 405
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 406
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    goto :goto_0

    .line 410
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 412
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 415
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 416
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 419
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1917
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1921
    :goto_0
    return v1

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1920
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1921
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1929
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1933
    :goto_0
    return v1

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1932
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1933
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getServiceState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1941
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1945
    :goto_0
    return v1

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1944
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1945
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 857
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager$Injector;->getSimOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 887
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 892
    :goto_0
    return-object v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 890
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 892
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 2

    .prologue
    .line 827
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    const/4 v1, 0x1

    .line 844
    :goto_0
    return v1

    .line 831
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    const/4 v1, 0x2

    goto :goto_0

    .line 834
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    const/4 v1, 0x3

    goto :goto_0

    .line 837
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    const/4 v1, 0x4

    goto :goto_0

    .line 840
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 841
    const/4 v1, 0x5

    goto :goto_0

    .line 844
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1049
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1054
    :goto_0
    return-object v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1052
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1675
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1680
    :goto_0
    return-object v1

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1678
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1680
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2872
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2877
    :goto_0
    return-object v1

    .line 2873
    :catch_0
    move-exception v0

    .line 2874
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2875
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2877
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1953
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1957
    :goto_0
    return v1

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1956
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1957
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1965
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1969
    :goto_0
    return-object v1

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1968
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1977
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStrings()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1981
    :goto_0
    return-object v1

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1980
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1981
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getUimState()I
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public getVTLoopBackMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1989
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTLoopBackMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1993
    :goto_0
    return v1

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1992
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1993
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVTSimulatedMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2001
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTSimulatedMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2005
    :goto_0
    return v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2004
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2005
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1199
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1204
    :goto_0
    return-object v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1202
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1204
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2982
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2987
    :goto_0
    return-object v1

    .line 2983
    :catch_0
    move-exception v0

    .line 2984
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2985
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2987
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1144
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1149
    :goto_0
    return-object v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1147
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1149
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2927
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2932
    :goto_0
    return-object v1

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2930
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2932
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1181
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1186
    :goto_0
    return v1

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1184
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1186
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2964
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2969
    :goto_0
    return v1

    .line 2965
    :catch_0
    move-exception v0

    .line 2966
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2967
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2969
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2410
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2414
    :goto_0
    return v1

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2413
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2414
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 805
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 811
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 808
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 809
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 811
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCardExt(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2847
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardExt(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2853
    :goto_0
    return v1

    .line 2848
    :catch_0
    move-exception v0

    .line 2850
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2851
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2853
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasVTCall()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2013
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasVTCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2017
    :goto_0
    return v1

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2016
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2017
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public htcCdmaEndCall()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2025
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2029
    :goto_0
    return v1

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2028
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2029
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2037
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :goto_0
    return-void

    .line 2039
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2038
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public htcModemLinkOn()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcModemLinkOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1526
    :goto_0
    return v1

    .line 1522
    :catch_0
    move-exception v0

    .line 1524
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1525
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1526
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2047
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isCallWaiting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2051
    :goto_0
    return v1

    .line 2048
    :catch_0
    move-exception v0

    .line 2049
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2050
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2051
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2422
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2426
    :goto_0
    return v1

    .line 2423
    :catch_0
    move-exception v0

    .line 2424
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2425
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2426
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1535
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isFdnEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1540
    :goto_0
    return v1

    .line 1536
    :catch_0
    move-exception v0

    .line 1538
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1539
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1540
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isIdle()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2434
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2438
    :goto_0
    return v1

    .line 2435
    :catch_0
    move-exception v0

    .line 2436
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2437
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2438
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3182
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isInService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3188
    :goto_0
    return v1

    .line 3183
    :catch_0
    move-exception v0

    .line 3185
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3186
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3188
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 477
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2791
    const/4 v0, 0x0

    return v0
.end method

.method public isOffhook()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2446
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2450
    :goto_0
    return v1

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2449
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2450
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2458
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2462
    :goto_0
    return v1

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2461
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2462
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isRinging()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2474
    :goto_0
    return v1

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2473
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2474
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimPinEnabled()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2482
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2486
    :goto_0
    return v1

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2485
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2486
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 1511
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1512
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 1494
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1495
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1416
    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1419
    .local v0, notifyNow:Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 1416
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1418
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1422
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1420
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2659
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaNeedsProvisioning()Z

    move-result v0

    return v0
.end method

.method public performHtcPhoneAction(I)V
    .locals 1
    .parameter "action"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2059
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :goto_0
    return-void

    .line 2061
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2060
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestCW_UW_DREG()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2596
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_DREG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    :goto_0
    return-void

    .line 2598
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2597
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestCW_UW_REG()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2606
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :goto_0
    return-void

    .line 2608
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2607
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1741
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestEhrpdDomainNameChangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1746
    :goto_0
    return v1

    .line 1742
    :catch_0
    move-exception v0

    .line 1744
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1745
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1746
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2616
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDeviceCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2620
    :goto_0
    return v1

    .line 2617
    :catch_0
    move-exception v0

    .line 2618
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2619
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2620
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2628
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDisableCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2632
    :goto_0
    return v1

    .line 2629
    :catch_0
    move-exception v0

    .line 2630
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2631
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2632
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 8
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2069
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestISIMRead(IIIII)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2073
    :goto_0
    return-object v0

    .line 2070
    :catch_0
    move-exception v6

    .local v6, ex:Landroid/os/RemoteException;
    move-object v0, v7

    .line 2071
    goto :goto_0

    .line 2072
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .local v6, ex:Ljava/lang/NullPointerException;
    move-object v0, v7

    .line 2073
    goto :goto_0
.end method

.method public requestQueryISIMSupported()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2081
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestQueryISIMSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2085
    :goto_0
    return v1

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2084
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2085
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2093
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2097
    :goto_0
    return v1

    .line 2094
    :catch_0
    move-exception v0

    .line 2095
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2096
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2097
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 1
    .parameter "ehrpdmode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1732
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetEhrpdDisableCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1733
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2105
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2109
    :goto_0
    return-object v1

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2108
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2109
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 1
    .parameter "lbsvalue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2640
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetLBSNTFY(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :goto_0
    return-void

    .line 2642
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2641
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public resetPdnForSettingsChange()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2650
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->resetPdnForSettingsChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2654
    :goto_0
    return-void

    .line 2652
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2651
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public sendAT_BRIC()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2117
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2118
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 1
    .parameter "type"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2127
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendAT_PushMail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2128
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "command"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2137
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2141
    :goto_0
    return-object v1

    .line 2138
    :catch_0
    move-exception v0

    .line 2139
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2140
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2141
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 3
    .parameter "szRAND"
    .parameter "szAUTN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2149
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuth3GReq([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2153
    :goto_0
    return-object v1

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2152
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2153
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 3
    .parameter "szRAND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2161
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuthGSMReq([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2165
    :goto_0
    return-object v1

    .line 2162
    :catch_0
    move-exception v0

    .line 2163
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2164
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2165
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 1
    .parameter "languageCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2173
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->sendLanguageChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    :goto_0
    return-void

    .line 2175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2174
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 3
    .parameter "enable"
    .parameter "dialNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1579
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCFUNumber(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1584
    :goto_0
    return v1

    .line 1580
    :catch_0
    move-exception v0

    .line 1582
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1583
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1584
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 1
    .parameter "profileSlot"
    .parameter "settings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2183
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPdnSettings(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    :goto_0
    return-void

    .line 2185
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2184
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2193
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    :goto_0
    return-void

    .line 2195
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2194
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 1
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2203
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    :goto_0
    return-void

    .line 2205
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2204
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 3
    .parameter "turnOn"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2506
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2510
    :goto_0
    return v1

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2509
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2510
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setTimeZone(ZI)V
    .locals 1
    .parameter "sign"
    .parameter "offset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2213
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :goto_0
    return-void

    .line 2215
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2214
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2223
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    :goto_0
    return-void

    .line 2225
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2224
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2234
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    :goto_0
    return-void

    .line 2236
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2235
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2244
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2245
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2254
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :goto_0
    return-void

    .line 2256
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2255
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public showCallScreen()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2518
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2522
    :goto_0
    return v1

    .line 2519
    :catch_0
    move-exception v0

    .line 2520
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2521
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2522
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 3
    .parameter "showDialpad"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2530
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2534
    :goto_0
    return v1

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2533
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2534
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2542
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2546
    :goto_0
    return-void

    .line 2544
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2543
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 3
    .parameter "pin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2552
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2556
    :goto_0
    return v1

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2555
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2556
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "pin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2264
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2268
    :goto_0
    return v1

    .line 2265
    :catch_0
    move-exception v0

    .line 2266
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2267
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2268
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2276
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->switchHoldAndActiveCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    :goto_0
    return-void

    .line 2278
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2277
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2564
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2568
    :goto_0
    return-void

    .line 2566
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2565
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "puk"
    .parameter "newpin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2286
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2290
    :goto_0
    return v1

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2289
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2290
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2574
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    :goto_0
    return-void

    .line 2576
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2575
    :catch_1
    move-exception v0

    goto :goto_0
.end method
