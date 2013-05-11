.class public Lcom/htc/service/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String; = "android.intent.action.PHONE_STATE_EXT"

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

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

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

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field public static final UIM_STATE_ABSENT:I = 0x1

.field public static final UIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final UIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final UIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final UIM_STATE_READY:I = 0x5

.field public static final UIM_STATE_UNKNOWN:I

.field private static sInstance:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/htc/service/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/service/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IHtcTelephony;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method public static ctFeatureEnable()Z
    .locals 1

    .prologue
    .line 3641
    const/4 v0, 0x0

    return v0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 2

    .prologue
    .line 3700
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x240

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 3705
    :cond_0
    const/4 v0, 0x1

    .line 3708
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dualPhoneEnable()Z
    .locals 2

    .prologue
    .line 3429
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x241

    if-ne v0, v1, :cond_1

    .line 3434
    :cond_0
    const/4 v0, 0x1

    .line 3437
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefMainPhoneType()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 3449
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3459
    :cond_0
    :goto_0
    return v0

    .line 3456
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3457
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDefSubPhoneType()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3472
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3482
    :cond_0
    :goto_0
    return v0

    .line 3479
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getDefault()Lcom/htc/service/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/htc/service/HtcTelephonyManager;->sInstance:Lcom/htc/service/HtcTelephonyManager;

    return-object v0
.end method

.method public static getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 3646
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v0

    return v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 184
    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;
    .locals 1

    .prologue
    .line 189
    const-string v0, "htctelephonyinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 194
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPhoneType()I
    .locals 3

    .prologue
    .line 3495
    const-string v1, "gsm.main_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3497
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3500
    .end local v0           #phoneType:I
    :goto_0
    return v0

    .restart local v0       #phoneType:I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefMainPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 2
    .parameter "phoneName"

    .prologue
    .line 3552
    const/4 v0, 0x0

    .line 3554
    .local v0, phoneType:I
    if-nez p0, :cond_1

    .line 3555
    const/4 v0, 0x0

    .line 3569
    :cond_0
    :goto_0
    return v0

    .line 3556
    :cond_1
    const-string v1, "GSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3557
    const/4 v0, 0x1

    goto :goto_0

    .line 3558
    :cond_2
    const-string v1, "CDMA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3559
    const/4 v0, 0x2

    goto :goto_0

    .line 3560
    :cond_3
    const-string v1, "SIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3561
    const/4 v0, 0x3

    goto :goto_0

    .line 3564
    :cond_4
    const-string v1, "SubGSM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3565
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSubPhoneType()I
    .locals 3

    .prologue
    .line 3521
    const-string v1, "gsm.sub_phone_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3523
    .local v0, phoneType:I
    invoke-static {v0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3526
    .end local v0           #phoneType:I
    :goto_0
    return v0

    .restart local v0       #phoneType:I
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefSubPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2762
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3627
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3633
    :cond_0
    :goto_0
    return v0

    .line 3630
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3631
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 3633
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isMainPhone(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3606
    invoke-static {p0}, Lcom/htc/service/HtcTelephonyManager;->isValidPhoneType(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3612
    :cond_0
    :goto_0
    return v0

    .line 3609
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3610
    :cond_2
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 3612
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isSingleAudioUnderMultipleModem()Z
    .locals 2

    .prologue
    .line 3416
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x240

    if-eq v0, v1, :cond_2

    .line 3421
    :cond_1
    const/4 v0, 0x1

    .line 3423
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3582
    packed-switch p0, :pswitch_data_0

    .line 3591
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3589
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setMainPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3506
    const-string v0, "gsm.main_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    return-void
.end method

.method public static setSubPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3532
    const-string v0, "gsm.sub_phone_type"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    return-void
.end method


# virtual methods
.method public ExitCDMAEmergencyMode()V
    .locals 4

    .prologue
    .line 4343
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    const-string v2, "ExitCDMAEmergencyMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4349
    :goto_0
    return-void

    .line 4344
    :catch_0
    move-exception v0

    .line 4345
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4346
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4347
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitCDMAEmergencyMode null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 735
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->akaAuthentication([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 745
    :goto_0
    return-object v1

    .line 737
    :catch_0
    move-exception v0

    .line 739
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 742
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 744
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public answerRingingCall()V
    .locals 4

    .prologue
    .line 4508
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "answerRingingCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4515
    :goto_0
    return-void

    .line 4510
    :catch_0
    move-exception v0

    .line 4511
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerRingingCall() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4512
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4513
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerRingingCall() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2524
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateAkaResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2533
    :goto_0
    return-object v1

    .line 2526
    :catch_0
    move-exception v0

    .line 2528
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2531
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2532
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateAkaResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2540
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2549
    :goto_0
    return-object v1

    .line 2542
    :catch_0
    move-exception v0

    .line 2544
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2547
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2548
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateGbaBootstrappingResponse(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 2556
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2565
    :goto_0
    return-object v1

    .line 2558
    :catch_0
    move-exception v0

    .line 2560
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2563
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2564
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "calculateNafExternalKey(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    .prologue
    .line 3841
    const-string v1, "HtcTelephonyManager"

    const-string v2, "cancelMissedCallsNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3849
    :goto_0
    return-void

    .line 3844
    :catch_0
    move-exception v0

    .line 3845
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3846
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3847
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelMissedCallsNotification null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeUserSettingLTE(Z)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 4044
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4046
    const-string v3, "HtcTelephonyManager"

    const-string v4, "changeUserSettingLTE not support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    :goto_0
    return v2

    .line 4049
    :cond_0
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4051
    .local v0, bundleArg1:Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 4052
    const-string v3, "arg1"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4053
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    const-string v4, "changeUserSettingLTE"

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4058
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 4055
    :cond_1
    const-string v3, "arg1"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4056
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    const-string v4, "changeUserSettingLTE"

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 4059
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 4060
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4062
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4063
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeUserSettingLTE null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x0

    return v0
.end method

.method public clearCdmaSysRecordContent()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4401
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4402
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "clearCdmaSysRecordContent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 4410
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 4403
    :catch_0
    move-exception v1

    .line 4404
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4407
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4408
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCdmaSysRecordContent null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    const/4 v1, 0x0

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->closeIccLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 521
    :goto_0
    return v1

    .line 513
    :catch_0
    move-exception v0

    .line 515
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "closeIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 518
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 3

    .prologue
    .line 1181
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->confirmFirstDataRoaming()V

    .line 1194
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1188
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "confirmFirstDataRoaming(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1190
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1192
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1268
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v1

    .line 1280
    :goto_0
    return v1

    .line 1270
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1274
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "dialWithoutDelay(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1277
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1279
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3125
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->disableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3129
    :goto_0
    return-void

    .line 3127
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3126
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLTENetwork(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 3963
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3965
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableLTENetwork not support"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    :goto_0
    return v1

    .line 3968
    :cond_0
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    if-eqz p1, :cond_1

    .line 3970
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 3973
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3972
    :cond_1
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3974
    :catch_0
    move-exception v0

    .line 3975
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3977
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3978
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLTENetwork null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3108
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableLocationUpdatesExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3112
    :goto_0
    return-void

    .line 3110
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3109
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableMpdp(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2202
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2203
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableMpdp(Z)V

    .line 2215
    :goto_0
    return-void

    .line 2205
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableMpdp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v0

    .line 2209
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enableMpdp(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2211
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2213
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 4191
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "enablePS_W2G_Handover()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->enablePS_W2G_Handover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4198
    :goto_0
    return-void

    .line 4193
    :catch_0
    move-exception v0

    .line 4194
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4195
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4196
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePS_W2G_Handover() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2712
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->enableRegistrationState_wifi_call(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2718
    :goto_0
    return-void

    .line 2713
    :catch_0
    move-exception v0

    .line 2714
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2715
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2716
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call_ext(ZI)V
    .locals 3
    .parameter "on"
    .parameter "phoneType"

    .prologue
    .line 2723
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->enableRegistrationState_wifi_call_ext(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2729
    :goto_0
    return-void

    .line 2724
    :catch_0
    move-exception v0

    .line 2725
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2726
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2727
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 4454
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4457
    :goto_0
    return-object v1

    .line 4455
    :catch_0
    move-exception v0

    .line 4456
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalGetter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4457
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 4472
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4475
    :goto_0
    return-object v1

    .line 4473
    :catch_0
    move-exception v0

    .line 4474
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalGetterInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4475
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 4463
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4466
    :goto_0
    return-object v1

    .line 4464
    :catch_0
    move-exception v0

    .line 4465
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalSetter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4466
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 4481
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4484
    :goto_0
    return-object v1

    .line 4482
    :catch_0
    move-exception v0

    .line 4483
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "generalSetterInternal exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public getActiveCallConnectTime()J
    .locals 5

    .prologue
    const-wide/16 v1, -0x1

    .line 1501
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1502
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallConnectTime()J

    move-result-wide v1

    .line 1514
    :goto_0
    return-wide v1

    .line 1504
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActiveCallConnectTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    goto :goto_0

    .line 1506
    :catch_0
    move-exception v0

    .line 1508
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getActiveCallConnectTime(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1511
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1513
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1456
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1469
    :goto_0
    return-object v1

    .line 1459
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActiveCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1463
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getActiveCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1466
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1468
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2222
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2223
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getActivePDPList()[Ljava/lang/String;

    move-result-object v1

    .line 2235
    :goto_0
    return-object v1

    .line 2225
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePDPList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v0

    .line 2229
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "enableMpdp(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2232
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2234
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1478
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v1

    .line 1491
    :goto_0
    return-object v1

    .line 1481
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getBackgroundCallNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1483
    :catch_0
    move-exception v0

    .line 1485
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getBackgroundCallNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1488
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1490
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1587
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v1

    .line 1600
    :goto_0
    return-object v1

    .line 1590
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1594
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1597
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1599
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1650
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v1

    .line 1663
    :goto_0
    return-object v1

    .line 1653
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCFUNumberFromOperator()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    .line 1657
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCFUNumberFromOperator(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1660
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1662
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3344
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCallStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3350
    :goto_0
    return v1

    .line 3345
    :catch_0
    move-exception v0

    .line 3347
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3348
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3350
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCardCheckedState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3690
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCardCheckedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3694
    :goto_0
    return v1

    .line 3691
    :catch_0
    move-exception v0

    .line 3692
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3693
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3694
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1069
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCdmaMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1079
    :goto_0
    return-object v1

    .line 1071
    :catch_0
    move-exception v0

    .line 1073
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCdmaMin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1076
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1078
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCdmaSmartNetworkStatus()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4301
    :try_start_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcTelephonyManager"

    const-string v5, "getCdmaSmartNetworkStatus()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v4

    const-string v5, "getCdmaSmartNetworkStatus"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4303
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v4, "getCdmaSmartNetworkStatus"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4304
    .local v2, result:Z
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaSmartNetworkStatus():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4311
    .end local v0           #bundleResult:Landroid/os/Bundle;
    .end local v2           #result:Z
    :cond_1
    :goto_0
    return v2

    .line 4306
    :catch_0
    move-exception v1

    .line 4307
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaSmartNetworkStatus remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4308
    goto :goto_0

    .line 4309
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4310
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaSmartNetworkStatus null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4311
    goto :goto_0
.end method

.method public getCdmaSysRecordContent(II)[[I
    .locals 13
    .parameter "index"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 4371
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4372
    .local v1, bundleArgs:Landroid/os/Bundle;
    const-string v10, "arg1"

    invoke-virtual {v1, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4373
    const-string v10, "arg2"

    invoke-virtual {v1, v10, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4375
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v10

    const-string v11, "getCdmaSysRecordContent"

    invoke-interface {v10, v11, v1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 4376
    .local v2, bundleResult:Landroid/os/Bundle;
    const-string v10, "getCdmaSysRecordContent_size"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 4377
    .local v8, size:I
    const-string v10, "getCdmaSysRecordContent_sid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 4378
    .local v7, sid:[I
    const-string v10, "getCdmaSysRecordContent_nid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 4379
    .local v5, nid:[I
    const-string v10, "getCdmaSysRecordContent_bsid"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 4380
    .local v0, bsid:[I
    const/4 v10, 0x3

    filled-new-array {v8, v10}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 4381
    .local v6, result:[[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 4383
    aget-object v10, v6, v4

    const/4 v11, 0x0

    aget v12, v7, v4

    aput v12, v10, v11

    .line 4384
    aget-object v10, v6, v4

    const/4 v11, 0x1

    aget v12, v5, v4

    aput v12, v10, v11

    .line 4385
    aget-object v10, v6, v4

    const/4 v11, 0x2

    aget v12, v0, v4

    aput v12, v10, v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4381
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v6

    .line 4395
    .end local v0           #bsid:[I
    .end local v1           #bundleArgs:Landroid/os/Bundle;
    .end local v2           #bundleResult:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v5           #nid:[I
    .end local v6           #result:[[I
    .end local v7           #sid:[I
    .end local v8           #size:I
    :goto_1
    return-object v9

    .line 4388
    :catch_0
    move-exception v3

    .line 4389
    .local v3, ex:Landroid/os/RemoteException;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent remote exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4391
    check-cast v9, [[I

    goto :goto_1

    .line 4392
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 4393
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "HtcTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCdmaSysRecordContent exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4395
    check-cast v9, [[I

    goto :goto_1
.end method

.method public getCdmaSysRecordSize()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 4356
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4357
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "getCdmaSysRecordSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 4365
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 4358
    :catch_0
    move-exception v1

    .line 4359
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4362
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4363
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysRecordSize null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCellLocationExt(I)Landroid/telephony/CellLocation;
    .locals 6
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 3084
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getCellLocationExt(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3085
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 3086
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 3093
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 3089
    :catch_0
    move-exception v2

    .line 3090
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "getCellLocationExt(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 3091
    goto :goto_0

    .line 3092
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 3093
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2914
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2919
    :goto_0
    return-object v1

    .line 2915
    :catch_0
    move-exception v0

    .line 2916
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2917
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2919
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentActiveCallDuration()J
    .locals 6

    .prologue
    .line 4175
    const-wide/16 v0, 0x0

    .line 4177
    .local v0, duration:J
    :try_start_0
    const-string v3, "HtcTelephonyManager"

    const-string v4, "getCurrentActiveCallDuration()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentActiveCallDuration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 4184
    :goto_0
    return-wide v0

    .line 4179
    :catch_0
    move-exception v2

    .line 4180
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4181
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 4182
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentActiveCallDuration() null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentCallState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1816
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getCurrentCallState()I

    move-result v1

    .line 1829
    :goto_0
    return v1

    .line 1819
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCurrentCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1821
    :catch_0
    move-exception v0

    .line 1823
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getCurrentCallState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1826
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1828
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3381
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataActivityExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3387
    :goto_0
    return v1

    .line 3382
    :catch_0
    move-exception v0

    .line 3384
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3385
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3387
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3402
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDataStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3407
    :goto_0
    return v1

    .line 3403
    :catch_0
    move-exception v0

    .line 3405
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3406
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3407
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1159
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatus()[I

    move-result-object v1

    .line 1172
    :goto_0
    return-object v1

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1166
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getDetailIccStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1169
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1171
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 4106
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getDetailIccStatusExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getDetailIccStatusExt(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4110
    :goto_0
    return-object v1

    .line 4108
    :catch_0
    move-exception v0

    .line 4109
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetailIccStatusExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2823
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2827
    :goto_0
    return-object v1

    .line 2824
    :catch_0
    move-exception v0

    .line 2825
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2826
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2827
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersionExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2806
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2810
    :goto_0
    return-object v1

    .line 2807
    :catch_0
    move-exception v0

    .line 2808
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2809
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2810
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4202
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getWifiDrxInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getDrxInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4209
    :goto_0
    return-object v1

    .line 4204
    :catch_0
    move-exception v0

    .line 4205
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4207
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4208
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiDrxInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1044
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1054
    :goto_0
    return-object v1

    .line 1046
    :catch_0
    move-exception v0

    .line 1048
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getEsn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1051
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1053
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 793
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getGlobalDataRoamingOption()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 803
    :goto_0
    return v1

    .line 795
    :catch_0
    move-exception v0

    .line 797
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGlobalDataRoamingOption(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 800
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1203
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsState()I

    move-result v1

    .line 1216
    :goto_0
    return v1

    .line 1206
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getGprsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGprsState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1213
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1215
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGprsStateExt(I)I
    .locals 4
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x1

    .line 4145
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getGprsStateExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getGprsStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4154
    :goto_0
    return v1

    .line 4148
    :catch_0
    move-exception v0

    .line 4150
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 4152
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4154
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1794
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 862
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 872
    :goto_0
    return-object v1

    .line 864
    :catch_0
    move-exception v0

    .line 866
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 869
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 871
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 886
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    .line 888
    :catch_0
    move-exception v0

    .line 890
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcDeviceSvn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 893
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 895
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 932
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 942
    :goto_0
    return-object v1

    .line 934
    :catch_0
    move-exception v0

    .line 936
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcIccSerialNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 939
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 941
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 978
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 988
    :goto_0
    return-object v1

    .line 980
    :catch_0
    move-exception v0

    .line 982
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1AlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 985
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 987
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 955
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 965
    :goto_0
    return-object v1

    .line 957
    :catch_0
    move-exception v0

    .line 959
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcLine1Number(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 962
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 964
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 4
    .parameter "stack"

    .prologue
    const/4 v1, -0x1

    .line 1985
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1986
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v1

    .line 1998
    :goto_0
    return v1

    .line 1988
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getHtcNetworkType([Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1990
    :catch_0
    move-exception v0

    .line 1992
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1995
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1997
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x3

    .line 3663
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcServiceStateExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3669
    :goto_0
    return v1

    .line 3664
    :catch_0
    move-exception v0

    .line 3666
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3667
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3669
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 909
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 919
    :goto_0
    return-object v1

    .line 911
    :catch_0
    move-exception v0

    .line 913
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcSubscriberId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 916
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 918
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 1024
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1034
    :goto_0
    return-object v1

    .line 1026
    :catch_0
    move-exception v0

    .line 1028
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailAlphaTag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1031
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1033
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 1001
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1011
    :goto_0
    return-object v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1005
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getHtcVoiceMailNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1008
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1010
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIccCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 3060
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3061
    const-string v0, "gsm.gsm.sim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3069
    :goto_0
    return-object v0

    .line 3063
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3064
    const-string v0, "gsm.sub.icc.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3066
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3067
    const-string v0, "gsm.cdma.uim.oprt.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3069
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
    .line 3015
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3016
    const-string v0, "gsm.gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3024
    :goto_0
    return-object v0

    .line 3018
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3019
    const-string v0, "gsm.sub.icc.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3021
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3022
    const-string v0, "gsm.cdma.uim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3024
    :cond_2
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "iccType"

    .prologue
    .line 3040
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3041
    const-string v0, "gsm.gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3049
    :goto_0
    return-object v0

    .line 3043
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3044
    const-string v0, "gsm.sub.icc.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3046
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3047
    const-string v0, "gsm.cdma.uim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3049
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

    .line 2775
    if-ne p1, v2, :cond_0

    .line 2776
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    .line 2791
    :goto_0
    return-object v1

    .line 2778
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 2779
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2781
    :cond_1
    if-ne p1, v3, :cond_2

    .line 2782
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberExt(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2784
    :cond_2
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2787
    :catch_0
    move-exception v0

    .line 2788
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2789
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2791
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getIccState(I)I
    .locals 5
    .parameter "iccType"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2974
    if-ne p1, v1, :cond_0

    .line 2975
    const-string v4, "gsm.icc.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2985
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3001
    :goto_1
    return v1

    .line 2977
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    if-ne p1, v3, :cond_1

    .line 2978
    const-string v4, "gsm.icc.sub.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2980
    .end local v0           #prop:Ljava/lang/String;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 2981
    const-string v4, "gsm.icc.uim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2983
    .end local v0           #prop:Ljava/lang/String;
    :cond_2
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 2988
    :cond_3
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 2989
    goto :goto_1

    .line 2991
    :cond_4
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 2992
    goto :goto_1

    .line 2994
    :cond_5
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2995
    const/4 v1, 0x4

    goto :goto_1

    .line 2997
    :cond_6
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2998
    const/4 v1, 0x5

    goto :goto_1

    .line 3001
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIccType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4084
    const-string v2, "gsm.sim.types"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4085
    .local v0, iccType:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4086
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4087
    const/4 v1, 0x1

    .line 4098
    :cond_0
    :goto_0
    return v1

    .line 4088
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4089
    const/4 v1, 0x2

    goto :goto_0

    .line 4090
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4091
    const/4 v1, 0x3

    goto :goto_0

    .line 4092
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4093
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3743
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3744
    const-string v1, "HtcTelephonyManager"

    const-string v2, "getKddiUserAgent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->getKddiUserAgent()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3754
    :goto_0
    return-object v1

    .line 3749
    :catch_0
    move-exception v0

    .line 3750
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    const-string v1, ""

    goto :goto_0

    .line 3752
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3753
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    const-string v1, ""

    goto :goto_0
.end method

.method public getLTELastErrorCode()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 3932
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v3

    const-string v4, "getLTELastErrorCode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3933
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v3, "getLTELastErrorCode"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3939
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 3934
    :catch_0
    move-exception v1

    .line 3935
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3937
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3938
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELastErrorCode null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 538
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v0

    .line 532
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getLastError(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 535
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLine1AlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2878
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2883
    :goto_0
    return-object v1

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2881
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2883
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1NumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2858
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2863
    :goto_0
    return-object v1

    .line 2859
    :catch_0
    move-exception v0

    .line 2860
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2861
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2863
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

    .line 3142
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNeighboringCellInfoExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3146
    :goto_0
    return-object v1

    .line 3143
    :catch_0
    move-exception v0

    .line 3144
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3145
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3146
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkOperatorExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3179
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3180
    const-string v0, "gsm.gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3188
    :goto_0
    return-object v0

    .line 3182
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3183
    const-string v0, "gsm.sub.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3185
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3186
    const-string v0, "gsm.cdma.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3188
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3159
    const-string v0, "gsm.gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3167
    :goto_0
    return-object v0

    .line 3161
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3162
    const-string v0, "gsm.sub.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3164
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3165
    const-string v0, "gsm.cdma.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3167
    :cond_2
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkTypeExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x0

    .line 3232
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    .line 3233
    .local v1, telephony:Lcom/android/internal/telephony/IHtcTelephony;
    if-eqz v1, :cond_0

    .line 3234
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getNetworkTypeExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3244
    .end local v1           #telephony:Lcom/android/internal/telephony/IHtcTelephony;
    :cond_0
    :goto_0
    return v2

    .line 3239
    :catch_0
    move-exception v0

    .line 3241
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3242
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3244
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3277
    invoke-virtual {p0, p1}, Lcom/htc/service/HtcTelephonyManager;->getNetworkTypeExt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3301
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 3279
    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    .line 3281
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 3283
    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    .line 3285
    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    .line 3287
    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    .line 3289
    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    .line 3291
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 3293
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 3295
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 3297
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 3299
    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 3277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 4
    .parameter "profileSlot"

    .prologue
    const/4 v1, 0x0

    .line 1839
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1840
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v1

    .line 1852
    :goto_0
    return-object v1

    .line 1842
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPdnSettings(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    .line 1846
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1849
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1851
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 1897
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1907
    :goto_0
    return-object v1

    .line 1899
    :catch_0
    move-exception v0

    .line 1901
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPdnSettings2(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1904
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1906
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2735
    const/4 v1, 0x0

    .line 2737
    .local v1, state:Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPhoneState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2744
    :goto_0
    return-object v1

    .line 2738
    :catch_0
    move-exception v0

    .line 2739
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2740
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2741
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPhoneState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4255
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getPowerInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4262
    :goto_0
    return-object v1

    .line 4257
    :catch_0
    move-exception v0

    .line 4258
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4260
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4261
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerInfo() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerKeyFlag()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1567
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1568
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPowerKeyFlag()Z

    move-result v1

    .line 1580
    :goto_0
    return v1

    .line 1570
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1572
    :catch_0
    move-exception v0

    .line 1574
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPowerKeyFlag(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1579
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1945
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1946
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 1958
    :goto_0
    return v1

    .line 1948
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    .line 1952
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getPreferredNetworkType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1955
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1957
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getScreenBusyState()Z
    .locals 4

    .prologue
    .line 2612
    const/4 v1, 0x0

    .line 2614
    .local v1, screenbusy:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getScreenBusyState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2621
    :goto_0
    return v1

    .line 2615
    :catch_0
    move-exception v0

    .line 2616
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2617
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2618
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getScreenBusyState(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 4
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 714
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 723
    :goto_0
    return-object v1

    .line 716
    :catch_0
    move-exception v0

    .line 718
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 721
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 722
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSectorId(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1227
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1228
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getServiceState()I

    move-result v1

    .line 1240
    :goto_0
    return v1

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getServiceState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1237
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1239
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSubscriberIdExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2840
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2845
    :goto_0
    return-object v1

    .line 2841
    :catch_0
    move-exception v0

    .line 2842
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2843
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2845
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1109
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getSubsidyLockTypes()I

    move-result v1

    .line 1122
    :goto_0
    return v1

    .line 1112
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1116
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getSubsidyLockTypes(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1119
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1121
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2101
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2102
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v1

    .line 2114
    :goto_0
    return-object v1

    .line 2104
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStatus()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2106
    :catch_0
    move-exception v0

    .line 2108
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2111
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2113
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2139
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v1

    .line 2152
    :goto_0
    return-object v1

    .line 2142
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getUSSDVerificationStrings()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2144
    :catch_0
    move-exception v0

    .line 2146
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "getUSSDVerificationStrings(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2149
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2151
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUimState()I
    .locals 1

    .prologue
    .line 2956
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/service/HtcTelephonyManager;->getIccState(I)I

    move-result v0

    return v0
.end method

.method public getVTLoopBackMode()Z
    .locals 4

    .prologue
    .line 1777
    const/4 v1, 0x0

    .line 1779
    .local v1, loopback:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1780
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getVTLoopBackMode()Z

    move-result v1

    .line 1790
    :goto_0
    return v1

    .line 1782
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTLoopBackMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "setVTLoopBackMode(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1786
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1787
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVTSimulatedMode()Z
    .locals 4

    .prologue
    .line 1742
    const/4 v1, 0x0

    .line 1744
    .local v1, simulated:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->getVTSimulatedMode()Z

    move-result v1

    .line 1755
    :goto_0
    return v1

    .line 1747
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVTSimulatedMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1749
    :catch_0
    move-exception v0

    .line 1750
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "setVTLoopBackMode(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1751
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1752
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2933
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2938
    :goto_0
    return-object v1

    .line 2934
    :catch_0
    move-exception v0

    .line 2935
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2936
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2938
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumberExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 2896
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2901
    :goto_0
    return-object v1

    .line 2897
    :catch_0
    move-exception v0

    .line 2898
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 2899
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2901
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3330
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getVoiceMessageCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3335
    :goto_0
    return v1

    .line 3331
    :catch_0
    move-exception v0

    .line 3332
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3333
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3335
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public gsmAuthentication([B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"

    .prologue
    const/4 v1, 0x0

    .line 4419
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->gsmAuthentication([B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4429
    :goto_0
    return-object v1

    .line 4421
    :catch_0
    move-exception v0

    .line 4423
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "akaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4426
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4428
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 4
    .parameter "dialString"
    .parameter "phoneType"

    .prologue
    .line 4217
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 4218
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 4229
    :goto_0
    return v1

    .line 4221
    :cond_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "handlePinMmiExt()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiExt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 4224
    :catch_0
    move-exception v0

    .line 4225
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4226
    :catch_1
    move-exception v0

    .line 4227
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinMmi() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hasIccCardExt(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3311
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->hasIccCardExt(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3317
    :goto_0
    return v1

    .line 3312
    :catch_0
    move-exception v0

    .line 3314
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3315
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3317
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasVTCall()Z
    .locals 1

    .prologue
    .line 1801
    const/4 v0, 0x0

    return v0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "9999999999"

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1385
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaEndCall()Z

    move-result v1

    .line 1398
    :goto_0
    return v1

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1392
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "htcCdmaEndCall(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1395
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1397
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 3

    .prologue
    .line 1336
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->htcCdmaExitRadioPowerSaveMode()V

    .line 1349
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->htcCdmaExitRadioPowerSaveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1343
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "htcCdmaExitRadioPowerSaveMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1345
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1347
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public htcModemLinkOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1360
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->htcModemLinkOn()Z

    move-result v1

    .line 1373
    :goto_0
    return v1

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->htcModemLinkOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    .line 1367
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "htcModemLinkOn(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1370
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1372
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1610
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isCallWaiting()Z

    move-result v1

    .line 1623
    :goto_0
    return v1

    .line 1613
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isCallWaiting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v0

    .line 1617
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isCallWaiting(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1620
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1622
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isCatServiceReady()Z
    .locals 4

    .prologue
    .line 2663
    const/4 v1, 0x0

    .line 2665
    .local v1, isReady:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->isCatServiceReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2672
    :goto_0
    return v1

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isCatServiceReady(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2668
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2669
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isCatServiceReady(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnableLTENetwork()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3986
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3988
    const-string v3, "HtcTelephonyManager"

    const-string v4, "isEnableLTENetwork not support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    :goto_0
    return v2

    .line 3991
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IHtcTelephony;->getPreferredNetworkType()I

    move-result v1

    .line 3992
    .local v1, value:I
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableLTENetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3993
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4000
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 4004
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 4005
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableLTENetwork remote exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4007
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4008
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HtcTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableLTENetwork null pointer exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3993
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnterCDMAEmergencyMode()J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 4325
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "isEnterCDMAEmergencyMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4326
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v4, "isEnterCDMAEmergencyMode"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 4332
    .end local v0           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return-wide v2

    .line 4327
    :catch_0
    move-exception v1

    .line 4328
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterCDMAEmergencyMode remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4330
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4331
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnterCDMAEmergencyMode null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1408
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->isFdnEnabled()Z

    move-result v1

    .line 1421
    :goto_0
    return v1

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isFdnEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1413
    :catch_0
    move-exception v0

    .line 1415
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isFdnEnabled(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1418
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1420
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 3
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x0

    .line 3651
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->isInService(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3657
    :goto_0
    return v1

    .line 3652
    :catch_0
    move-exception v0

    .line 3654
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3655
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3657
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoamingExt(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3200
    const-string v0, "true"

    const-string v1, "gsm.gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3208
    :goto_0
    return v0

    .line 3202
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3203
    const-string v0, "true"

    const-string v1, "gsm.sub.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3205
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3206
    const-string v0, "true"

    const-string v1, "gsm.cdma.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3208
    :cond_2
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4494
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "isRinging()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 4501
    :goto_0
    return v1

    .line 4496
    :catch_0
    move-exception v0

    .line 4497
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging() remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4499
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4500
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRinging() null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUimPinEnabled()Z
    .locals 3

    .prologue
    .line 2945
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->isUimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2950
    :goto_0
    return v1

    .line 2947
    :catch_0
    move-exception v0

    .line 2949
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "isUimPinEnabled(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2950
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserSettingLTE()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4018
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "isUserSettingLTE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 4019
    .local v0, bundleResult:Landroid/os/Bundle;
    const-string v4, "isUserSettingLTE"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4020
    .local v2, value:I
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4021
    packed-switch v2, :pswitch_data_0

    .line 4037
    .end local v0           #bundleResult:Landroid/os/Bundle;
    .end local v2           #value:I
    :goto_0
    return v3

    .line 4028
    .restart local v0       #bundleResult:Landroid/os/Bundle;
    .restart local v2       #value:I
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 4032
    .end local v0           #bundleResult:Landroid/os/Bundle;
    .end local v2           #value:I
    :catch_0
    move-exception v1

    .line 4033
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4035
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4036
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserSettingLTE null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4021
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyKeyEvent(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 2603
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2609
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2606
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2607
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyKeyEvent(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenBusy(Z)V
    .locals 3
    .parameter "busy"

    .prologue
    .line 2592
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->notifyScreenBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2598
    :goto_0
    return-void

    .line 2593
    :catch_0
    move-exception v0

    .line 2594
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2595
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2596
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "notifyScreenBusy(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 4
    .parameter "resMsg"

    .prologue
    .line 2625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2626
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "CMD_DETATIL"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2627
    const-string v2, "RES_CODE"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getIntResCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2628
    const-string v2, "MENU_SELECT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getMenuSelection()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2629
    const-string v2, "INPUT"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-string v2, "YES_NO"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getYesNo()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2631
    const-string v2, "CONFIRM"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getConfirm()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2634
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onCmdResponse(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2640
    :goto_0
    return-void

    .line 2635
    :catch_0
    move-exception v1

    .line 2636
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "onCmdResponse(): RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2637
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2638
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "onCmdResponse(): NullPointerException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleEventList(IZ)V
    .locals 3
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 2644
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onHandleEventList(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2650
    :goto_0
    return-void

    .line 2645
    :catch_0
    move-exception v0

    .line 2646
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "onHandleEventList(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2647
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2648
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "onHandleEventList(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 2654
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->onLanguageEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2660
    :goto_0
    return-void

    .line 2655
    :catch_0
    move-exception v0

    .line 2656
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendEventDownload(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2657
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2658
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendEventDownload(): NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 498
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "openIccLogicalChannel(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 503
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public performEndCall()V
    .locals 4

    .prologue
    .line 4162
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "performEndCall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4170
    :goto_0
    return-void

    .line 4164
    :catch_0
    move-exception v0

    .line 4165
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performEndCall() remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4166
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4167
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performEndCall() null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public performHtcPhoneAction(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 2180
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2181
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneAction(I)V

    .line 2193
    :goto_0
    return-void

    .line 2183
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->performHtcPhoneAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2185
    :catch_0
    move-exception v0

    .line 2187
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "performHtcPhoneAction(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2189
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2191
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public performHtcPhoneActionExt(II)V
    .locals 4
    .parameter "action"
    .parameter "phoneType"

    .prologue
    .line 4136
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "performHtcPhoneActionExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->performHtcPhoneActionExt(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4141
    :goto_0
    return-void

    .line 4138
    :catch_0
    move-exception v0

    .line 4139
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performHtcPhoneActionExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public plusCodeTranslationPrefix(I)Ljava/lang/String;
    .locals 7
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 4238
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4239
    .local v0, bundleArg1:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4240
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "plusCodeTranslationPrefix"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4241
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v4, "plusCodeTranslationPrefix"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 4247
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 4242
    :catch_0
    move-exception v2

    .line 4243
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plusCodeTranslationPrefix remote exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4245
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 4246
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plusCodeTranslationPrefix null pointer exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public queryCAVE()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryCAVE()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 239
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "queryCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryMD5()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryMD5()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "queryMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public querySSDUpdate()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->querySSDUpdate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "querySSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 269
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryUIMAUTH()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryUIMAUTH()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 365
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "queryUIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryVPM()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->queryVPM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 322
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "queryVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 319
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "randu"

    .prologue
    const/4 v1, 0x0

    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestCAVE(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCW_UW_DREG()V
    .locals 3

    .prologue
    .line 2387
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2388
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_DREG()V

    .line 2400
    :goto_0
    return-void

    .line 2390
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_DREG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2392
    :catch_0
    move-exception v0

    .line 2394
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestCW_UW_DREG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2396
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2398
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCW_UW_REG()V
    .locals 3

    .prologue
    .line 2367
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2368
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->requestCW_UW_REG()V

    .line 2380
    :goto_0
    return-void

    .line 2370
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2372
    :catch_0
    move-exception v0

    .line 2374
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestCW_UW_REG(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2376
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2378
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestClearLocProcessDB()V
    .locals 2

    .prologue
    .line 3907
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestClearLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    return-void
.end method

.method public requestClearLocProcessDB_EXT()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3855
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestClearLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requesttClearLocProcessDB()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3862
    :goto_0
    return v1

    .line 3857
    :catch_0
    move-exception v0

    .line 3858
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesttClearLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3860
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3861
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesttClearLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestConfigLocProcessDB(IIII)V
    .locals 2
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    .line 3922
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestConfigLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    return-void
.end method

.method public requestConfigLocProcessDB_EXT(IIII)Z
    .locals 5
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 3894
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestConfigLocProcessDB_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestConfigLocProcessDB(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3901
    :goto_0
    return v1

    .line 3896
    :catch_0
    move-exception v0

    .line 3897
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestConfigLocProcessDB remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3899
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3900
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestConfigLocProcessDB null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestDiagCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "command"

    .prologue
    .line 4436
    const/4 v3, 0x0

    .line 4438
    .local v3, result:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4439
    .local v0, bundleArg1:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4440
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "requestDiagCommand"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4441
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v4, "requestDiagCommand"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4445
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 4446
    const-string v4, "HtcTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestDiagCommand: command="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_0
    return-object v3

    .line 4442
    :catch_0
    move-exception v2

    .line 4443
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestDiagCommand exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 2036
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestEhrpdDomainNameChangeState()I

    move-result v1

    .line 2049
    :goto_0
    return v1

    .line 2039
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestEhrpdDomainNameChangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2041
    :catch_0
    move-exception v0

    .line 2043
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestEhrpdDomainNameChangeState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2046
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2048
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2491
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2500
    :goto_0
    return-object v1

    .line 2493
    :catch_0
    move-exception v0

    .line 2495
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2498
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2499
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetBtid(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetCurrentLoc()V
    .locals 2

    .prologue
    .line 3917
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestGetCurrentLoc is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    return-void
.end method

.method public requestGetCurrentLoc_EXT()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3881
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetCurrentLoc_EXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetCurrentLoc()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3888
    :goto_0
    return-object v1

    .line 3883
    :catch_0
    move-exception v0

    .line 3884
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetCurrentLoc remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3886
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3887
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetCurrentLoc null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 582
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 591
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 586
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetDOMAIN(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 589
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 590
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetDOMAIN(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 2078
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDeviceCapability()I

    move-result v1

    .line 2091
    :goto_0
    return v1

    .line 2081
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDeviceCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2083
    :catch_0
    move-exception v0

    .line 2085
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetEhrpdDeviceCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2088
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2090
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 2057
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2058
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetEhrpdDisableCapability()I

    move-result v1

    .line 2070
    :goto_0
    return v1

    .line 2060
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestGetEhrpdDisableCapability()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2062
    :catch_0
    move-exception v0

    .line 2064
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetEhrpdDisableCapability(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2067
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2069
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 755
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 764
    :goto_0
    return-object v1

    .line 757
    :catch_0
    move-exception v0

    .line 759
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetGID1(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 762
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetGID1(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetGID1Ext(I)Ljava/lang/String;
    .locals 6
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 772
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "getGID1Ext"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 775
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v4, "getGID1Ext"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 781
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 776
    :catch_0
    move-exception v2

    .line 777
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestGetGID1Ext(): RemoteException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 779
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 780
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "HtcTelephonyManager"

    const-string v5, "requestGetGID1Ext(): NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2443
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetHasISIM()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2452
    :goto_0
    return v1

    .line 2445
    :catch_0
    move-exception v0

    .line 2447
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2450
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2451
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetHasISIM(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 572
    :goto_0
    return-object v1

    .line 565
    :catch_0
    move-exception v0

    .line 567
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 570
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 601
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 610
    :goto_0
    return-object v1

    .line 603
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPU(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 608
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 609
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMPU(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 638
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 647
    :goto_0
    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMSI(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 645
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 646
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIMSI(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetIsGBASupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2459
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetIsGBASupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2468
    :goto_0
    return v1

    .line 2461
    :catch_0
    move-exception v0

    .line 2463
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2466
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2467
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetIsGBASupported(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2507
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2516
    :goto_0
    return-object v1

    .line 2509
    :catch_0
    move-exception v0

    .line 2511
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2514
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2515
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetKeyLifetime(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3825
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetLTERFBandInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTERFBandInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3834
    :goto_0
    return-object v1

    .line 3829
    :catch_0
    move-exception v0

    .line 3830
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTERFBandInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3832
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3833
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTERFBandInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetLTETxRxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3805
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetLTETxRxInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetLTETxRxInfo()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3814
    :goto_0
    return-object v1

    .line 3809
    :catch_0
    move-exception v0

    .line 3810
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTETxRxInfo remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3812
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3813
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetLTETxRxInfo null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 658
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 667
    :goto_0
    return-object v1

    .line 660
    :catch_0
    move-exception v0

    .line 662
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetMobileNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 665
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 666
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetMobileNumber(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 618
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 627
    :goto_0
    return-object v1

    .line 620
    :catch_0
    move-exception v0

    .line 622
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCF(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 626
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCF(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    .line 442
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCFAddress(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetPCSCFAddress(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2475
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2484
    :goto_0
    return-object v1

    .line 2477
    :catch_0
    move-exception v0

    .line 2479
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2482
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2483
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetRand(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetSIMType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2684
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetSIMType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2690
    :goto_0
    return v1

    .line 2685
    :catch_0
    move-exception v0

    .line 2686
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2688
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2689
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetO2SIMType(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 420
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 429
    :goto_0
    return v1

    .line 422
    :catch_0
    move-exception v0

    .line 424
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetVolteSipRegFailure(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 427
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 428
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetVolteSipRegFailure(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3947
    :try_start_0
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestGetWimaxNai"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestGetWimaxNai()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3954
    :goto_0
    return-object v1

    .line 3949
    :catch_0
    move-exception v0

    .line 3950
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetWimaxNai remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3952
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3953
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetWimaxNai null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 8
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    const/4 v7, 0x0

    .line 2283
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IHtcTelephony;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2296
    :goto_0
    return-object v0

    .line 2286
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

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

    goto :goto_0

    .line 2288
    :catch_0
    move-exception v6

    .line 2290
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestISIMRead(): RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 2291
    goto :goto_0

    .line 2293
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 2295
    .local v6, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v7

    .line 2296
    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 680
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 689
    :goto_0
    return-object v1

    .line 682
    :catch_0
    move-exception v0

    .line 684
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 687
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 688
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestImsAkaAuthentication(): NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2410
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestLtePermanentlyDetached()Z
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

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    const/4 v1, 0x0

    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 338
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestMD5(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestQueryISIMSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2262
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2263
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestQueryISIMSupported()Z

    move-result v1

    .line 2275
    :goto_0
    return v1

    .line 2265
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestQueryISIMSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v0

    .line 2269
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestQueryISIMSupported(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2272
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2274
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2326
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2327
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestResetWSIMState()Z

    move-result v1

    .line 2339
    :goto_0
    return v1

    .line 2329
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 2331
    :catch_0
    move-exception v0

    .line 2333
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestResetWSIMState(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2336
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2338
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "randssd"

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSSDUpdate(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "authbs"

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSSDUpdateConfirm(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 3
    .parameter "ehrpdmode"

    .prologue
    .line 2016
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2017
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetEhrpdDisableCapability(I)V

    .line 2029
    :goto_0
    return-void

    .line 2019
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetEhrpdDisableCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2021
    :catch_0
    move-exception v0

    .line 2023
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetEhrpdDisableCapability(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2025
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2027
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2425
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2435
    :goto_0
    return-void

    .line 2427
    :catch_0
    move-exception v0

    .line 2429
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetFastDormancy(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2431
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2433
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 2304
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2305
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2317
    :goto_0
    return-object v1

    .line 2307
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 2309
    :catch_0
    move-exception v0

    .line 2311
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestSetISIMAUTH(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2314
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2316
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 3
    .parameter "lbsvalue"

    .prologue
    .line 2349
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetLBSNTFY(I)V

    .line 2362
    :goto_0
    return-void

    .line 2352
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestSetLBSNTFY(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2354
    :catch_0
    move-exception v0

    .line 2356
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetLBSNTFY(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2358
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2360
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetLocProcessDB(IIIIII[I)V
    .locals 2
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3912
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestSetLocProcessDB is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    return-void
.end method

.method public requestSetLocProcessDB_EXT(IIIIII[I)Z
    .locals 9
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 3868
    :try_start_0
    const-string v0, "HtcTelephonyManager"

    const-string v1, "requestSetLocProcessDB_EXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->requestSetLocProcessDB(IIIIII[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3875
    :goto_0
    return v0

    .line 3870
    :catch_0
    move-exception v8

    .line 3871
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetLocProcessDB remote exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    const/4 v0, 0x0

    goto :goto_0

    .line 3873
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 3874
    .local v8, ex:Ljava/lang/NullPointerException;
    const-string v0, "HtcTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetLocProcessDB null pointer exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 832
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :goto_0
    return-void

    .line 834
    :catch_0
    move-exception v0

    .line 836
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "requestSetMultiRABTrafficThrottling(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 838
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 840
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestVPM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "requestVPM(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 302
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPdnForSettingsChange()V
    .locals 3

    .prologue
    .line 1878
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange()V

    .line 1891
    :goto_0
    return-void

    .line 1881
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->resetPdnForSettingsChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1883
    :catch_0
    move-exception v0

    .line 1885
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "resetPdnForSettingsChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1887
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1889
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPdnForSettingsChange2()V
    .locals 3

    .prologue
    .line 1927
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->resetPdnForSettingsChange2()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1937
    :goto_0
    return-void

    .line 1929
    :catch_0
    move-exception v0

    .line 1931
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "resetPdnForSettingsChange2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1933
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1935
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAT_BRIC()V
    .locals 3

    .prologue
    .line 1248
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAT_BRIC()V

    .line 1261
    :goto_0
    return-void

    .line 1251
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->sendAT_BRIC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1253
    :catch_0
    move-exception v0

    .line 1255
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAT_BRIC(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1257
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1259
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1319
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->sendAT_PushMail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1325
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v0

    .line 1321
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendAT_PushMail(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1322
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1323
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 1432
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1445
    :goto_0
    return-object v1

    .line 1435
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1439
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "sendAllowedCSIMCommand(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1442
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1444
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 4
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    const/4 v1, 0x0

    .line 1686
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1687
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v1

    .line 1699
    :goto_0
    return-object v1

    .line 1689
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuth3GReq([B[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1691
    :catch_0
    move-exception v0

    .line 1693
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1696
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1698
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 4
    .parameter "szRAND"

    .prologue
    const/4 v1, 0x0

    .line 1707
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendCmmbAuthGSMReq([B)[B

    move-result-object v1

    .line 1720
    :goto_0
    return-object v1

    .line 1710
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendCmmbAuthGSMReq([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1712
    :catch_0
    move-exception v0

    .line 1714
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "sendCmmbAuth3GReq(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1717
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1719
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendKddiSmsDeliver([B)Ljava/lang/Object;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 3775
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3776
    const-string v2, "HtcTelephonyManager"

    const-string v3, "sendKddiSmsDeliver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    .line 3780
    :cond_1
    const-string v2, "HtcTelephonyManager"

    const-string v3, "sendKddiSmsDeliver - null or empty data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    :goto_0
    return-object v1

    .line 3785
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 3786
    :catch_0
    move-exception v0

    .line 3787
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendKddiSmsDeliver remote exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3789
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3790
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HtcTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendKddiSmsDeliver null pointer exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 3
    .parameter "languageCode"

    .prologue
    .line 2240
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2241
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendLanguageChange(I)V

    .line 2253
    :goto_0
    return-void

    .line 2243
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendLanguageChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2245
    :catch_0
    move-exception v0

    .line 2247
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "sendLanguageChange(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2249
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2251
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 3716
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->sendMTRejectMessage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3720
    :goto_0
    return v1

    .line 3717
    :catch_0
    move-exception v0

    .line 3718
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3719
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3720
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendMTRejectMessageExt(Ljava/lang/String;I)Z
    .locals 6
    .parameter "number"
    .parameter "phoneType"

    .prologue
    const/4 v3, 0x0

    .line 3727
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3728
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "arg1"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    const-string v4, "arg2"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3730
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v4

    const-string v5, "sendMTRejectMessageExt"

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IHtcTelephony;->generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3731
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v4, "sendMTRejectMessageExt"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 3735
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    :goto_0
    return v3

    .line 3732
    :catch_0
    move-exception v2

    .line 3733
    .local v2, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 3734
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3735
    .local v2, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 4
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    const/4 v1, 0x0

    .line 1630
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1631
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v1

    .line 1643
    :goto_0
    return v1

    .line 1633
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setCFUNumber(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    .line 1637
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "setCFUNumber(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1640
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1642
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCdmaSmartNetwork(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 4278
    :try_start_0
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCdmaSmartNetwork("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4280
    .local v0, bundleArg1:Landroid/os/Bundle;
    const-string v5, "arg1"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4281
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v5

    const-string v6, "setCdmaSmartNetwork"

    invoke-interface {v5, v6, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4282
    .local v1, bundleResult:Landroid/os/Bundle;
    const-string v5, "setCdmaSmartNetwork"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4283
    .local v3, result:Z
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCdmaSmartNetwork:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4290
    .end local v0           #bundleArg1:Landroid/os/Bundle;
    .end local v1           #bundleResult:Landroid/os/Bundle;
    .end local v3           #result:Z
    :cond_1
    :goto_0
    return v3

    .line 4285
    :catch_0
    move-exception v2

    .line 4286
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCdmaSmartNetwork remote exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 4287
    goto :goto_0

    .line 4288
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 4289
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v5, "HtcTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCdmaSmartNetwork null pointer exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 4290
    goto :goto_0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2573
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2583
    :goto_0
    return-void

    .line 2575
    :catch_0
    move-exception v0

    .line 2577
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGbaBootstrappingParams(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2579
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2581
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 811
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->setGlobalDataRoamingOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 815
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setGlobalDataRoamingOption(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 817
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 819
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGlobalDataRoamingOption null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKddiOtaStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 3760
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3761
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKddiOtaStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setKddiOtaStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3771
    :goto_0
    return-void

    .line 3766
    :catch_0
    move-exception v0

    .line 3767
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3768
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3769
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKddiUserAgent null pointer exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 3
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1859
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings(ILjava/lang/String;)V

    .line 1872
    :goto_0
    return-void

    .line 1862
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPdnSettings(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1864
    :catch_0
    move-exception v0

    .line 1866
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPdnSettings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1868
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1870
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 1913
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1923
    :goto_0
    return-void

    .line 1915
    :catch_0
    move-exception v0

    .line 1917
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPdnSettings2(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1919
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1921
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 3

    .prologue
    .line 1546
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->setPowerKeyFlag()V

    .line 1559
    :goto_0
    return-void

    .line 1549
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1551
    :catch_0
    move-exception v0

    .line 1553
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPowerKeyFlag(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1555
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1557
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferredNetworkType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1965
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1966
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType(I)V

    .line 1978
    :goto_0
    return-void

    .line 1968
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1970
    :catch_0
    move-exception v0

    .line 1972
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setPreferredNetworkType(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1974
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1976
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2699
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setPreferredNetworkType_wifi_call(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2706
    :goto_0
    return v1

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2706
    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2702
    :catch_1
    move-exception v0

    .line 2703
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setTimeZone(ZI)V
    .locals 3
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1297
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->setTimeZone(ZI)V

    .line 1310
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setTimeZone(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1304
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setTimeZone(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1306
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1308
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 2121
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2122
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2134
    :goto_0
    return-void

    .line 2124
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2126
    :catch_0
    move-exception v0

    .line 2128
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setUSSDVerificationStatus(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2130
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2132
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2163
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2164
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_0
    return-void

    .line 2166
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2168
    :catch_0
    move-exception v0

    .line 2170
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setUSSDVerificationStrings(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2172
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2174
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1760
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1761
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTLoopBackMode(Z)V

    .line 1773
    :goto_0
    return-void

    .line 1763
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTLoopBackMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1765
    :catch_0
    move-exception v0

    .line 1767
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setVTLoopBackMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1769
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1771
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVTSimulatedMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1726
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHtcTelephony;->setVTSimulatedMode(Z)V

    .line 1739
    :goto_0
    return-void

    .line 1729
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVTSimulatedMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1731
    :catch_0
    move-exception v0

    .line 1733
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "setVTSimulatedMode(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1735
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1737
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public showIncallScreen()V
    .locals 1

    .prologue
    .line 2749
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IHtcTelephony;->showIncallScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    :goto_0
    return-void

    .line 2751
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2750
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 4
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 4116
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "supplyPinExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPinExt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4120
    :goto_0
    return v1

    .line 4118
    :catch_0
    move-exception v0

    .line 4119
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplyPinExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "puk"
    .parameter "newpin"
    .parameter "phoneType"

    .prologue
    .line 4126
    :try_start_0
    const-string v1, "HtcTelephonyManager"

    const-string v2, "supplyPukExt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IHtcTelephony;->supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4130
    :goto_0
    return v1

    .line 4128
    :catch_0
    move-exception v0

    .line 4129
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplyPukExt remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "type"
    .parameter "pin"

    .prologue
    const/4 v1, 0x0

    .line 1134
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1147
    :goto_0
    return v1

    .line 1137
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v0

    .line 1141
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcTelephonyManager"

    const-string v3, "supplySubsidyLockPin(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1144
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1146
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 3

    .prologue
    .line 1524
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IHtcTelephony;->switchHoldAndActiveCall()V

    .line 1537
    :goto_0
    return-void

    .line 1527
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->switchHoldAndActiveCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1531
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "switchHoldAndActiveCall(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1533
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1535
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 459
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 461
    :catch_0
    move-exception v7

    .line 463
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccBasicChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 464
    goto :goto_0

    .line 466
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 468
    .local v7, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v8

    .line 469
    goto :goto_0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 477
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v8

    .line 481
    .local v8, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "transmitIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 486
    .local v8, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 487
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephonyInternal()Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->transmitIccSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 548
    :catch_0
    move-exception v7

    .line 550
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "HtcTelephonyManager"

    const-string v1, "openIccLogicalChannel(): RemoteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "puk"
    .parameter "newpin"

    .prologue
    const/4 v1, 0x0

    .line 1090
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEnableFullyIHtcTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1091
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1097
    :goto_0
    return v1

    .line 1093
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1096
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1097
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public updateRegDregState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 394
    return-void
.end method

.method public updateRegDregState(II)V
    .locals 3
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IHtcTelephony;->updateRegDregState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "updateRegDregState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 386
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 400
    :try_start_0
    invoke-direct {p0}, Lcom/htc/service/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IHtcTelephony;->updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HtcTelephonyManager"

    const-string v2, "updateSipInviteState(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 406
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
