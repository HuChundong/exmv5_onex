.class public Lcom/android/internal/telephony/HtcTelephony;
.super Lcom/android/internal/telephony/IHtcTelephony$Stub;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephony$1;,
        Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephony$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_HTC_CSIM_AUTH_RSP:I = 0x87

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES:I = 0x7b

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT:I = 0x7c

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x78

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT:I = 0x79

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PDN_CHANGE_TAKE_EFFECT:I = 0xa5

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO:I = 0x98

.field private static final CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO:I = 0x96

.field private static final CMD_HTC_REQUEST_GET_LTE_TxRx_INFO_DONE:I = 0x97

.field private static final CMD_HTC_REQUEST_QUERY_PDN:I = 0xa0

.field private static final CMD_HTC_REQUEST_QUERY_PDN_CONT:I = 0xa1

.field private static final CMD_HTC_REQUEST_QUERY_PDN_RESULT:I = 0xa2

.field private static final CMD_HTC_REQUEST_SET_PDN:I = 0xa3

.field private static final CMD_HTC_REQUEST_SET_PDN_RESULT:I = 0xa4

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEBUG_SIGNATURE:Z = false

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field public static final HTCTELEPHONY_SERVICE:Ljava/lang/String; = "htctelephony"

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SDBG:Z = false

.field static final TAG:Ljava/lang/String; = "HtcTelephony"

.field private static final ipTypes:[Ljava/lang/String;

.field private static final pdnLables_Spcs:[Ljava/lang/String;

.field private static final pdnLables_Vzw:[Ljava/lang/String;


# instance fields
.field private lastError:I

.field private mCSIMResult:Landroid/os/Bundle;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlatformSignature:[Landroid/content/pm/Signature;

.field private mShareSignature:[Landroid/content/pm/Signature;

.field private mSignatureLock:Ljava/lang/Object;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field private rejectAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcTelephony;->DBG:Z

    .line 2051
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "IPv4"

    aput-object v1, v0, v2

    const-string v1, "IPv6"

    aput-object v1, v0, v3

    const-string v1, "IPv4v6"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    .line 2108
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Vzw:[Ljava/lang/String;

    .line 2109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ota"

    aput-object v1, v0, v2

    const-string v1, "internet"

    aput-object v1, v0, v3

    const-string v1, "pam"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Spcs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "phone"
    .parameter "ci"

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 3052
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    .line 973
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 974
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    .line 975
    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    .line 976
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 977
    const-string v0, "HtcTelephony"

    const-string v1, "new HtcTelephony in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcTelephony;IILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateResponse(IILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephony;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony;->pdnQueryContResult(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony;->pdnQueryResponse(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    return-void
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .parameter "os"
    .parameter "data"

    .prologue
    .line 1331
    array-length v0, p2

    .line 1334
    .local v0, len:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 1335
    const/16 v0, 0xff

    .line 1336
    const-string v1, "HtcTelephony"

    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1341
    return-void
.end method

.method private callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z
    .locals 13
    .parameter "givenSignature"
    .parameter "uid"
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3111
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3112
    .local v7, packages:[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v10, v7

    if-lez v10, :cond_4

    .line 3121
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v8

    .line 3122
    .local v8, pkgSignatures:[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    array-length v10, v8

    if-lez v10, :cond_4

    .line 3123
    iget-object v11, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3124
    if-nez p1, :cond_0

    .line 3126
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3131
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3133
    if-eqz p1, :cond_3

    array-length v10, p1

    if-lez v10, :cond_3

    .line 3134
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 3135
    .local v9, sig:Landroid/content/pm/Signature;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 3136
    .local v6, matchSig:Landroid/content/pm/Signature;
    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3140
    const/4 v10, 0x1

    .line 3156
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    .end local v9           #sig:Landroid/content/pm/Signature;
    :goto_3
    return v10

    .line 3131
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 3135
    .restart local v1       #arr$:[Landroid/content/pm/Signature;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #matchSig:Landroid/content/pm/Signature;
    .restart local v9       #sig:Landroid/content/pm/Signature;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3134
    .end local v6           #matchSig:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 3146
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v9           #sig:Landroid/content/pm/Signature;
    :cond_3
    const-string v10, "HtcTelephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No signature found : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const/4 v10, 0x1

    goto :goto_3

    .line 3151
    .end local v8           #pkgSignatures:[Landroid/content/pm/Signature;
    :cond_4
    if-eqz p3, :cond_5

    .line 3153
    const-wide/16 v10, 0x1388

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3156
    :cond_5
    :goto_4
    const/4 v10, 0x0

    goto :goto_3

    .line 3154
    :catch_0
    move-exception v10

    goto :goto_4

    .line 3127
    .restart local v8       #pkgSignatures:[Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method private callingWithPlatformSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3093
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 3094
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 3095
    :cond_0
    const/4 v1, 0x1

    .line 3097
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method private callingWithShareSignature(Z)Z
    .locals 2
    .parameter "delayWhenNotMatch"

    .prologue
    .line 3102
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephony;->getCallingUid()I

    move-result v0

    .line 3103
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3104
    const/4 v1, 0x1

    .line 3106
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->callingWithGivenSignature([Landroid/content/pm/Signature;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 1

    .prologue
    .line 3047
    const/4 v0, 0x0

    return v0
.end method

.method public static dualPhoneEnable()Z
    .locals 1

    .prologue
    .line 2947
    const/4 v0, 0x0

    return v0
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1127
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1128
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/16 v11, 0x7d

    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 1132
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< exchangeAPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v1, v1, 0x8

    iget v2, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1135
    .local v10, s:Ljava/lang/String;
    iget-object v1, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1138
    :cond_1
    return-object v10
.end method

.method public static getDefMainPhoneType()I
    .locals 1

    .prologue
    .line 2954
    const/4 v0, -0x1

    return v0
.end method

.method public static getDefSubPhoneType()I
    .locals 1

    .prologue
    .line 2961
    const/4 v0, -0x1

    return v0
.end method

.method public static getMainPhoneType()I
    .locals 1

    .prologue
    .line 2968
    const/4 v0, -0x1

    return v0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 2
    .parameter "mPm"
    .parameter "packageName"

    .prologue
    .line 3075
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3077
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 3082
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 3087
    :catch_0
    move-exception v1

    .line 3088
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneTypeByName(Ljava/lang/String;)I
    .locals 1
    .parameter "phoneName"

    .prologue
    .line 2994
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubPhoneType()I
    .locals 1

    .prologue
    .line 2981
    const/4 v0, -0x1

    return v0
.end method

.method private initSignatureChecking(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3062
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3063
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 3064
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3065
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.phone"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPlatformSignature:[Landroid/content/pm/Signature;

    .line 3066
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.android.providers.contacts"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mShareSignature:[Landroid/content/pm/Signature;

    .line 3067
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mSignatureLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3069
    :cond_0
    monitor-exit v1

    .line 3070
    return-void

    .line 3069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDefMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3015
    const/4 v0, 0x0

    return v0
.end method

.method public static isMainPhone(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3008
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3001
    const/4 v0, 0x0

    return v0
.end method

.method private pdnChangeTakeEffect()V
    .locals 10

    .prologue
    .line 2442
    const/4 v0, 0x0

    .line 2444
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v6, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2447
    :goto_0
    const/4 v4, 0x0

    .line 2448
    .local v4, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2449
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v6, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2451
    .end local v4           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_2

    .line 2452
    const/4 v5, 0x0

    .line 2454
    .local v5, phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    const/4 v3, 0x0

    .line 2456
    .local v3, methodReset:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v7, "resetRadioForDisconnectingPdn"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2457
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2458
    .local v1, disconnectPdn:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2459
    const-string v6, "HtcTelephony"

    const-string v7, "Need reset the Radio due to some specific PDN has been modified"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_3

    .line 2461
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    .line 2467
    :cond_1
    :goto_1
    if-nez v5, :cond_4

    .line 2468
    const-string v6, "disconnectAllConnections"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2469
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "getNewMPDNTable"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2470
    const-string v6, "HtcTelephony"

    const-string v7, "Teardown data connections for new PDN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    .end local v1           #disconnectPdn:Ljava/lang/Boolean;
    .end local v3           #methodReset:Ljava/lang/reflect/Method;
    .end local v5           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_2
    :goto_2
    return-void

    .line 2463
    .restart local v1       #disconnectPdn:Ljava/lang/Boolean;
    .restart local v3       #methodReset:Ljava/lang/reflect/Method;
    .restart local v5       #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v6, :cond_1

    .line 2464
    iget-object v6, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    goto :goto_1

    .line 2473
    :cond_4
    const-string v6, "setDataConnectionAsDesired"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2474
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x1

    const/4 v6, 0x0

    check-cast v6, Landroid/os/Message;

    aput-object v6, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    const/4 v6, 0x0

    check-cast v4, Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->lockUntilRadioPower(ZLcom/android/internal/telephony/DataConnectionTracker;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2480
    .end local v1           #disconnectPdn:Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 2481
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "HtcTelephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to make current PDN setting take effect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2445
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #methodReset:Ljava/lang/reflect/Method;
    .end local v5           #phoneSST:Lcom/android/internal/telephony/ServiceStateTracker;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method private pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 11
    .parameter "request"

    .prologue
    .line 2112
    if-eqz p1, :cond_3

    .line 2113
    iget-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 2114
    .local v7, queryCmds:[Ljava/lang/String;
    if-eqz v7, :cond_7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 2116
    const/4 v1, 0x0

    .line 2117
    .local v1, msg:Landroid/os/Message;
    const/4 v8, 0x3

    new-array v2, v8, [Ljava/lang/Object;

    .line 2119
    .local v2, msgDataArray:[Ljava/lang/Object;
    const/4 v8, 0x2

    aget-object v5, v7, v8

    .line 2120
    .local v5, pdnType:Ljava/lang/String;
    const-string v8, "HtcTelephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 2122
    :cond_0
    const/4 v6, -0x1

    .line 2124
    .local v6, project:I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 2126
    :goto_0
    const/4 v0, 0x0

    .line 2127
    .local v0, knownPdns:[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 2131
    :goto_1
    if-eqz v0, :cond_4

    .line 2132
    const/4 v8, 0x0

    aput-object v0, v2, v8

    .line 2133
    const/4 v8, 0x0

    aget-object v5, v0, v8

    .line 2134
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2144
    .end local v0           #knownPdns:[Ljava/lang/String;
    .end local v6           #project:I
    :goto_2
    const/4 v4, 0x0

    .line 2145
    .local v4, pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v3, 0x0

    .line 2146
    .local v3, networkType:I
    if-eqz v5, :cond_1

    .line 2148
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 2150
    :goto_3
    sparse-switch v3, :sswitch_data_1

    .line 2163
    :cond_1
    :goto_4
    if-eqz v4, :cond_6

    .line 2164
    const/4 v8, 0x1

    aput-object v4, v2, v8

    .line 2165
    const/4 v8, 0x2

    aput-object p1, v2, v8

    .line 2166
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2167
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2168
    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/HtcTelephony;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2169
    const/4 v7, 0x0

    .line 2180
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgDataArray:[Ljava/lang/Object;
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v5           #pdnType:Ljava/lang/String;
    :cond_2
    :goto_5
    if-nez v7, :cond_3

    .line 2181
    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2182
    monitor-enter p1

    .line 2183
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2184
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2187
    .end local v7           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2128
    .restart local v0       #knownPdns:[Ljava/lang/String;
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #msgDataArray:[Ljava/lang/Object;
    .restart local v5       #pdnType:Ljava/lang/String;
    .restart local v6       #project:I
    .restart local v7       #queryCmds:[Ljava/lang/String;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Vzw:[Ljava/lang/String;

    goto :goto_1

    .line 2129
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/HtcTelephony;->pdnLables_Spcs:[Ljava/lang/String;

    goto :goto_1

    .line 2137
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 2141
    .end local v0           #knownPdns:[Ljava/lang/String;
    .end local v6           #project:I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa2

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_2

    .line 2152
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :sswitch_2
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x1

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2153
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2155
    :sswitch_3
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x2

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2156
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2158
    :sswitch_4
    new-instance v4, Lcom/android/internal/telephony/APNParam;

    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    const/4 v8, 0x4

    invoke-direct {v4, v5, v8}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_4

    .line 2173
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 2177
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgDataArray:[Ljava/lang/Object;
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .end local v5           #pdnType:Ljava/lang/String;
    :cond_7
    const-string v9, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN parm incorrect "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v7, :cond_8

    array-length v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 v7, 0x0

    goto :goto_5

    .line 2177
    :cond_8
    const-string v8, "null"

    goto :goto_6

    .line 2184
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 2149
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #msgDataArray:[Ljava/lang/Object;
    .restart local v3       #networkType:I
    .restart local v4       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v5       #pdnType:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 2125
    .end local v3           #networkType:I
    .end local v4           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v6       #project:I
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 2127
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch

    .line 2150
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private pdnQueryContResult(ILandroid/os/AsyncResult;)V
    .locals 13
    .parameter "resultType"
    .parameter "ar"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2190
    iget-object v8, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, [Ljava/lang/Object;

    .line 2191
    .local v4, msgDataArray:[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2193
    .local v7, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 2195
    aget-object v8, v4, v12

    check-cast v8, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v7, v8

    check-cast v7, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2196
    iget-object v8, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p1, v8, v7}, Lcom/android/internal/telephony/HtcTelephony;->processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    .line 2199
    const/4 v8, 0x0

    aget-object v8, v4, v8

    check-cast v8, [Ljava/lang/String;

    move-object v2, v8

    check-cast v2, [Ljava/lang/String;

    .line 2200
    .local v2, knownPdns:[Ljava/lang/String;
    aget-object v8, v4, v11

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    move-object v5, v8

    check-cast v5, Lcom/android/internal/telephony/APNParam;

    .line 2201
    .local v5, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v8, v5, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, currPdn:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2203
    .local v1, index:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    aget-object v8, v2, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2206
    :cond_0
    array-length v8, v2

    if-ge v1, v8, :cond_1

    .line 2207
    const-string v8, "HtcTelephony"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v6, Lcom/android/internal/telephony/APNParam;

    aget-object v8, v2, v1

    iget v9, v5, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-direct {v6, v8, v9}, Lcom/android/internal/telephony/APNParam;-><init>(Ljava/lang/String;I)V

    .line 2209
    .end local v5           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .local v6, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v8, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v9, 0xa1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2210
    .local v3, msg:Landroid/os/Message;
    aput-object v6, v4, v11

    .line 2211
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2212
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/HtcTelephony;->queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2213
    const/4 v7, 0x0

    move-object v5, v6

    .line 2222
    .end local v0           #currPdn:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #knownPdns:[Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    .end local v6           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 2223
    monitor-enter v7

    .line 2224
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 2225
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    :cond_2
    return-void

    .line 2218
    :cond_3
    const-string v9, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Query PDN(cont) "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v8, v4, v11

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    check-cast v8, Lcom/android/internal/telephony/APNParam;

    iget-object v8, v8, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    aget-object v8, v4, v12

    check-cast v8, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v7, v8

    check-cast v7, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    goto :goto_1

    .line 2225
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v0       #currPdn:Ljava/lang/String;
    .restart local v1       #index:I
    .restart local v2       #knownPdns:[Ljava/lang/String;
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v6       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_4
    move-object v5, v6

    .end local v6           #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v5       #pdnParam:Lcom/android/internal/telephony/APNParam;
    goto :goto_1
.end method

.method private pdnQueryResponse(ILandroid/os/AsyncResult;)V
    .locals 6
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2230
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 2231
    .local v1, msgDataArray:[Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2233
    .local v2, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Lcom/android/internal/telephony/APNParam;

    check-cast v3, Lcom/android/internal/telephony/APNParam;

    iget-object v0, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2234
    .local v0, currPdn:Ljava/lang/String;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2235
    const-string v3, "HtcTelephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query PDN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    .line 2242
    :goto_0
    monitor-enter v2

    .line 2243
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2244
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    return-void

    .line 2239
    :cond_0
    const-string v3, "HtcTelephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query PDN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2244
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 13
    .parameter "request"

    .prologue
    const/4 v12, 0x6

    const/4 v7, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 2321
    if-eqz p1, :cond_3

    .line 2322
    const/4 v0, 0x0

    .line 2324
    .local v0, commandSend:Z
    iget-object v5, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 2325
    .local v4, queryCmds:[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2326
    new-instance v3, Lcom/android/internal/telephony/APNParam;

    invoke-direct {v3}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 2327
    .local v3, pdnParam:Lcom/android/internal/telephony/APNParam;
    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0xa4

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2328
    .local v1, msg:Landroid/os/Message;
    array-length v5, v4

    const/4 v8, 0x7

    if-ne v5, v8, :cond_4

    .line 2329
    const-string v5, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 2331
    const/4 v2, 0x0

    .line 2333
    .local v2, networkType:I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v2

    .line 2335
    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 2344
    iput v11, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2348
    :goto_1
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 2350
    :goto_2
    aget-object v5, v4, v10

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2352
    const/4 v5, 0x3

    :try_start_2
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_3
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 2354
    :goto_4
    aget-object v5, v4, v11

    if-eqz v5, :cond_1

    .line 2355
    sget-object v5, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2356
    :goto_5
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    if-lez v5, :cond_1

    aget-object v5, v4, v11

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2357
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    goto :goto_5

    .line 2337
    :sswitch_0
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_1

    .line 2340
    :sswitch_1
    iput v10, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_1

    :cond_0
    move v6, v7

    .line 2352
    goto :goto_3

    .line 2361
    :cond_1
    const/4 v5, 0x5

    :try_start_3
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 2363
    :goto_6
    aget-object v5, v4, v12

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2410
    .end local v2           #networkType:I
    :goto_7
    if-eqz v3, :cond_2

    .line 2411
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2412
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/HtcTelephony;->setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z

    move-result v0

    .line 2415
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :cond_2
    if-nez v0, :cond_3

    .line 2416
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2417
    monitor-enter p1

    .line 2418
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2419
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2422
    .end local v0           #commandSend:Z
    .end local v4           #queryCmds:[Ljava/lang/String;
    :cond_3
    return-void

    .line 2365
    .restart local v0       #commandSend:Z
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v3       #pdnParam:Lcom/android/internal/telephony/APNParam;
    .restart local v4       #queryCmds:[Ljava/lang/String;
    :cond_4
    array-length v5, v4

    const/16 v8, 0xb

    if-ne v5, v8, :cond_7

    .line 2366
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 2367
    const-string v5, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set PDN2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    const/4 v2, 0x0

    .line 2370
    .restart local v2       #networkType:I
    const/4 v5, 0x1

    :try_start_5
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    .line 2372
    :goto_8
    sparse-switch v2, :sswitch_data_1

    .line 2381
    iput v11, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 2384
    :goto_9
    aget-object v5, v4, v10

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 2386
    const/4 v5, 0x3

    :try_start_6
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->id:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2389
    :goto_a
    const/4 v5, 0x4

    :try_start_7
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_b
    iput v5, v3, Lcom/android/internal/telephony/APNParam;->state:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2391
    :goto_c
    const/4 v5, 0x5

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 2392
    aget-object v5, v4, v12

    if-eqz v5, :cond_6

    .line 2393
    sget-object v5, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    .line 2394
    :goto_d
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    if-lez v5, :cond_6

    aget-object v5, v4, v12

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2395
    iget v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->type:I

    goto :goto_d

    .line 2374
    :sswitch_2
    iput v6, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_9

    .line 2377
    :sswitch_3
    iput v10, v3, Lcom/android/internal/telephony/APNParam;->rat:I

    goto :goto_9

    :cond_5
    move v5, v7

    .line 2389
    goto :goto_b

    .line 2399
    :cond_6
    const/4 v5, 0x7

    :try_start_8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->timer:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2402
    :goto_e
    const/16 v5, 0x8

    :try_start_9
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/APNParam;->authType:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2404
    :goto_f
    const/16 v5, 0x9

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 2405
    const/16 v5, 0xa

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    goto/16 :goto_7

    .line 2408
    .end local v2           #networkType:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2419
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catchall_0
    move-exception v5

    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v5

    .line 2403
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #networkType:I
    .restart local v3       #pdnParam:Lcom/android/internal/telephony/APNParam;
    :catch_0
    move-exception v5

    goto :goto_f

    .line 2400
    :catch_1
    move-exception v5

    goto :goto_e

    .line 2390
    :catch_2
    move-exception v5

    goto :goto_c

    .line 2387
    :catch_3
    move-exception v5

    goto :goto_a

    .line 2371
    :catch_4
    move-exception v5

    goto :goto_8

    .line 2362
    :catch_5
    move-exception v5

    goto/16 :goto_6

    .line 2353
    :catch_6
    move-exception v5

    goto/16 :goto_4

    .line 2349
    :catch_7
    move-exception v5

    goto/16 :goto_2

    .line 2334
    :catch_8
    move-exception v5

    goto/16 :goto_0

    .line 2335
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 2372
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private pdnUpdateResponse(IILandroid/os/AsyncResult;)V
    .locals 4
    .parameter "requestType"
    .parameter "resultType"
    .parameter "ar"

    .prologue
    .line 2425
    iget-object v0, p3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 2426
    .local v0, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v1, p3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2427
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set PDN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    monitor-enter v0

    .line 2429
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2430
    monitor-exit v0

    .line 2431
    return-void

    .line 2430
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private printException()V
    .locals 0

    .prologue
    .line 998
    return-void
.end method

.method private processQueryPdnFromModem(ILjava/lang/Object;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    .locals 10
    .parameter "resultType"
    .parameter "result"
    .parameter "request"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2054
    move-object v5, p2

    check-cast v5, Lcom/android/internal/telephony/APNParam;

    .line 2055
    .local v5, resultAPNParam:Lcom/android/internal/telephony/APNParam;
    if-eqz v5, :cond_a

    .line 2056
    const/4 v3, 0x6

    .line 2057
    .local v3, itemsAdd:I
    packed-switch p1, :pswitch_data_0

    .line 2060
    :goto_0
    iget-object v6, p3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    .line 2061
    .local v4, prevResults:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2062
    .local v0, currResults:[Ljava/lang/String;
    if-nez v4, :cond_b

    .line 2063
    add-int/lit8 v6, v3, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 2064
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    .line 2073
    :cond_0
    if-lt v3, v7, :cond_1

    .line 2074
    :try_start_0
    array-length v6, v0

    sub-int/2addr v6, v3

    iget-object v9, v5, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    aput-object v9, v0, v6

    .line 2076
    :cond_1
    const/4 v6, 0x2

    if-lt v3, v6, :cond_2

    .line 2077
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    iget v9, v5, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v6

    .line 2079
    :cond_2
    const/4 v6, 0x3

    if-lt v3, v6, :cond_3

    .line 2080
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v9, v6, 0x2

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->state:I

    if-eqz v6, :cond_c

    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 2082
    :cond_3
    const/4 v6, 0x4

    if-lt v3, v6, :cond_4

    .line 2083
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x3

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 2085
    :cond_4
    const/4 v6, 0x5

    if-lt v3, v6, :cond_5

    .line 2086
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v7, v6, 0x4

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->type:I

    if-ltz v6, :cond_d

    iget v6, v5, Lcom/android/internal/telephony/APNParam;->type:I

    sget-object v8, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_d

    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    iget v8, v5, Lcom/android/internal/telephony/APNParam;->type:I

    aget-object v6, v6, v8

    :goto_2
    aput-object v6, v0, v7

    .line 2089
    :cond_5
    const/4 v6, 0x6

    if-lt v3, v6, :cond_6

    .line 2090
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x5

    iget v7, v5, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 2092
    :cond_6
    const/4 v6, 0x7

    if-lt v3, v6, :cond_7

    .line 2093
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x6

    iget v7, v5, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 2095
    :cond_7
    const/16 v6, 0x8

    if-lt v3, v6, :cond_8

    .line 2096
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x7

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 2098
    :cond_8
    const/16 v6, 0x9

    if-lt v3, v6, :cond_9

    .line 2099
    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x8

    iget-object v7, v5, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 2101
    :cond_9
    iput-object v0, p3, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    .end local v0           #currResults:[Ljava/lang/String;
    .end local v3           #itemsAdd:I
    .end local v4           #prevResults:[Ljava/lang/String;
    :cond_a
    :goto_3
    return-void

    .line 2058
    .restart local v3       #itemsAdd:I
    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 2067
    .restart local v0       #currResults:[Ljava/lang/String;
    .restart local v4       #prevResults:[Ljava/lang/String;
    :cond_b
    array-length v6, v4

    add-int/2addr v6, v3

    new-array v0, v6, [Ljava/lang/String;

    .line 2068
    const/4 v2, 0x0

    .local v2, index:I
    :goto_4
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2069
    aget-object v6, v4, v2

    aput-object v6, v0, v2

    .line 2068
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #index:I
    :cond_c
    move v6, v8

    .line 2080
    goto :goto_1

    .line 2086
    :cond_d
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/HtcTelephony;->ipTypes:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v6, v6, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2102
    :catch_0
    move-exception v1

    .line 2103
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "HtcTelephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing PDN ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2057
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private queryPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z
    .locals 13
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    .line 1982
    const/4 v8, 0x0

    .line 1984
    .local v8, querySuccess:Z
    const/4 v0, 0x0

    .line 1986
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v9, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 1989
    :goto_0
    const/4 v5, 0x0

    .line 1990
    .local v5, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1991
    iget-object v9, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v9, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 1994
    .end local v5           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v5, :cond_1

    .line 1995
    const/4 v3, 0x0

    .line 1997
    .local v3, methodAPNParam_get:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v9, "getAPNParams"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/internal/telephony/APNParam;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 2000
    :goto_1
    if-eqz v3, :cond_2

    .line 2001
    const/4 v9, 0x2

    iput v9, p2, Landroid/os/Message;->arg2:I

    .line 2003
    const/4 v9, 0x2

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2004
    const/4 v8, 0x1

    .line 2048
    .end local v3           #methodAPNParam_get:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    return v8

    .line 2005
    .restart local v3       #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2006
    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "HtcTelephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN2 error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2010
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v7, -0x1

    .line 2012
    .local v7, profileIndex:I
    :try_start_3
    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    .line 2024
    :cond_3
    if-ltz v7, :cond_1

    .line 2025
    const/4 v4, 0x0

    .line 2026
    .local v4, methodName:Ljava/lang/String;
    iget v9, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v9, :pswitch_data_0

    .line 2038
    :goto_3
    :pswitch_0
    const/4 v9, 0x2

    :try_start_4
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/os/Message;

    aput-object v11, v9, v10

    invoke-virtual {v0, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2039
    const/4 v9, 0x1

    iput v9, p2, Landroid/os/Message;->arg2:I

    .line 2040
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2041
    const/4 v8, 0x1

    goto :goto_2

    .line 2013
    .end local v4           #methodName:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2014
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v9, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    .line 2015
    .local v6, msgDataArray:[Ljava/lang/Object;
    if-eqz v6, :cond_3

    array-length v9, v6

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, v6, v9

    if-eqz v9, :cond_3

    .line 2016
    const/4 v9, 0x0

    aget-object v9, v6, v9

    check-cast v9, [Ljava/lang/String;

    move-object v2, v9

    check-cast v2, [Ljava/lang/String;

    .line 2017
    .local v2, knownPdns:[Ljava/lang/String;
    array-length v9, v2

    add-int/lit8 v7, v9, -0x1

    .line 2018
    :goto_4
    if-ltz v7, :cond_3

    aget-object v9, v2, v7

    iget-object v10, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2019
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 2028
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #knownPdns:[Ljava/lang/String;
    .end local v6           #msgDataArray:[Ljava/lang/Object;
    .restart local v4       #methodName:Ljava/lang/String;
    :pswitch_1
    const-string v4, "get3GPPAPNParams"

    .line 2029
    goto :goto_3

    .line 2031
    :pswitch_2
    const-string v4, "getEHRPDAPNParams"

    .line 2032
    goto :goto_3

    .line 2034
    :pswitch_3
    const-string v4, "getLTEAPNParams"

    goto :goto_3

    .line 2042
    :catch_2
    move-exception v1

    .line 2043
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v9, "HtcTelephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query PDN error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1998
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #methodName:Ljava/lang/String;
    .end local v7           #profileIndex:I
    :catch_3
    move-exception v9

    goto/16 :goto_1

    .line 1987
    .end local v3           #methodAPNParam_get:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v9

    goto/16 :goto_0

    .line 2026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 940
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 941
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 944
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 945
    .local v1, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 946
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 949
    monitor-enter v1

    .line 950
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 952
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v2

    goto :goto_0

    .line 957
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 957
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 969
    return-void
.end method

.method public static setMainPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2975
    return-void
.end method

.method private setPdnFromModem(Lcom/android/internal/telephony/APNParam;Landroid/os/Message;)Z
    .locals 12
    .parameter "pdnParam"
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    .line 2256
    const/4 v6, 0x0

    .line 2258
    .local v6, setSuccess:Z
    const/4 v0, 0x0

    .line 2260
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v7, "com.android.internal.telephony.MMDataConnectionTracker"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 2263
    :goto_0
    const/4 v4, 0x0

    .line 2264
    .local v4, mmdt:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2265
    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2268
    .end local v4           #mmdt:Ljava/lang/Object;
    :cond_0
    if-eqz v4, :cond_1

    .line 2269
    const/4 v2, 0x0

    .line 2271
    .local v2, methodAPNParam_set:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v7, "setAPNParams"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/android/internal/telephony/APNParam;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Message;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 2274
    :goto_1
    if-eqz v2, :cond_2

    .line 2275
    iput v11, p2, Landroid/os/Message;->arg2:I

    .line 2277
    const/4 v7, 0x2

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2278
    const/4 v6, 0x1

    .line 2317
    .end local v2           #methodAPNParam_set:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    return v6

    .line 2279
    .restart local v2       #methodAPNParam_set:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2280
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN2 error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2284
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v5, -0x1

    .line 2286
    .local v5, profileIndex:I
    :try_start_3
    iget-object v7, p1, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 2289
    :goto_3
    if-ltz v5, :cond_1

    .line 2290
    const/4 v3, 0x0

    .line 2291
    .local v3, methodName:Ljava/lang/String;
    iget v7, p1, Lcom/android/internal/telephony/APNParam;->rat:I

    packed-switch v7, :pswitch_data_0

    .line 2304
    :goto_4
    :pswitch_0
    const/4 v7, 0x7

    :try_start_4
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2307
    const/4 v7, 0x1

    iput v7, p2, Landroid/os/Message;->arg2:I

    .line 2308
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p1, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p2, v7, v8

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2310
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 2293
    :pswitch_1
    const-string v3, "set3GPPAPNParams"

    .line 2294
    goto :goto_4

    .line 2296
    :pswitch_2
    const-string v3, "setEHRPDAPNParams"

    .line 2297
    goto :goto_4

    .line 2299
    :pswitch_3
    const-string v3, "setLTEAPNParams"

    goto :goto_4

    .line 2311
    :catch_1
    move-exception v1

    .line 2312
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v7, "HtcTelephony"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set PDN error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2287
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #methodName:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_3

    .line 2272
    .end local v5           #profileIndex:I
    :catch_3
    move-exception v7

    goto/16 :goto_1

    .line 2261
    .end local v2           #methodAPNParam_set:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 2291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setSubPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2988
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 6
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 1385
    const/4 v1, 0x0

    .line 1386
    .local v1, result:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1387
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x87

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->uiccAkaAuthenticate([B[BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1393
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1397
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1398
    return-object v1

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtcTelephony"

    const-string v4, "interrupted while trying to sendAllowedCSIMCommand"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1397
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1276
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1277
    const-string v2, "HtcTelephony"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_0
    return-object v1

    .line 1281
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1283
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 1288
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    const-string v2, "HtcTelephony"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_0
    return-object v1

    .line 1293
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephony;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1295
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 1300
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1301
    const-string v2, "HtcTelephony"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :goto_0
    return-object v1

    .line 1305
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1307
    .local v0, result:Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 3204
    const-string v0, "HtcTelephony"

    const-string v1, "cancelMissedCallsNotification() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->cancelMissedCallsNotification()V

    .line 3207
    :cond_0
    return-void
.end method

.method public checkTestIcc()Z
    .locals 2

    .prologue
    .line 1917
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->checkTestIcc()Z

    move-result v0

    .line 1920
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1166
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1170
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< closeIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1172
    const/4 v1, 0x1

    .line 1174
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public confirmFirstDataRoaming()V
    .locals 2

    .prologue
    .line 1615
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->confirmFirstDataRoaming()V

    .line 1618
    :cond_0
    return-void
.end method

.method public dialWithoutDelay(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 1659
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->dialWithoutDelay(Landroid/content/Intent;)Z

    .line 1662
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2870
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "HtcTelephony"

    const-string v1, "dispose in framework"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-void
.end method

.method public enableLocationUpdatesExt(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 2862
    return-void
.end method

.method public enableMpdp(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2599
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->enableMpdp(Z)V

    .line 2602
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2825
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2828
    if-eqz p1, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 2833
    :cond_0
    return-void

    .line 2826
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableRegistrationState_wifi_call_ext(ZI)V
    .locals 2
    .parameter "on"
    .parameter "phoneType"

    .prologue
    .line 2838
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 988
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    const-string v1, "HtcTelephony"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "HtcTelephony"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 3246
    const-string v0, "HtcTelephony"

    const-string v1, "generalGetter implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    const/4 v0, 0x0

    return-object v0
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    .line 3251
    const-string v0, "HtcTelephony"

    const-string v1, "generalSetter implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveCallConnectTime()J
    .locals 2

    .prologue
    .line 1776
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallConnectTime()J

    move-result-wide v0

    .line 1779
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getActiveCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1758
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2608
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActivePDPList()[Ljava/lang/String;

    move-result-object v0

    .line 2611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1767
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getBackgroundCallNumber()Ljava/lang/String;

    move-result-object v0

    .line 1770
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1810
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumber()Ljava/lang/String;

    move-result-object v0

    .line 1813
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCFUNumberFromOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1837
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCFUNumberFromOperator()Ljava/lang/String;

    move-result-object v0

    .line 1840
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2923
    const/4 v0, 0x0

    return v0
.end method

.method public getCardCheckedState()I
    .locals 1

    .prologue
    .line 3041
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationExt(I)Landroid/os/Bundle;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 2852
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentActiveCallDuration()J
    .locals 2

    .prologue
    .line 3238
    const-string v0, "HtcTelephony"

    const-string v1, "getCurrentActiveCallDuration() implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentCallState()I
    .locals 2

    .prologue
    .line 1934
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentCallState()I

    move-result v0

    .line 1937
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDataActivityExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2931
    const/4 v0, 0x0

    return v0
.end method

.method public getDataStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2940
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 2

    .prologue
    .line 1600
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDetailIccStatus()[I

    move-result-object v0

    .line 1603
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3221
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 1417
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGprsState()I
    .locals 2

    .prologue
    .line 1626
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v0

    .line 1629
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGprsStateExt(I)I
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 3230
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/4 v0, 0x0

    return v0
.end method

.method public getGsmNetworkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1908
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGsmNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 1911
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcNetworkType([Ljava/lang/String;)I
    .locals 2
    .parameter "stack"

    .prologue
    .line 2509
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getHtcNetworkType([Ljava/lang/String;)I

    move-result v0

    .line 2512
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHtcServiceStateExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3032
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public getIncallRecordingFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1852
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIncallRecordingFileName()Ljava/lang/String;

    move-result-object v0

    .line 1855
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKddiUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3168
    const-string v0, ""

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1179
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephony;->lastError:I

    return v0
.end method

.method public getNeighboringCellInfoExt(I)Ljava/util/List;
    .locals 1
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
    .line 2878
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkTypeExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2887
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeNameExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2896
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPdnSettings(I)Ljava/lang/String;
    .locals 2
    .parameter "profileSlot"

    .prologue
    .line 1948
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPdnSettings(I)Ljava/lang/String;

    move-result-object v0

    .line 1951
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 1973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    const/16 v0, 0xa0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 1977
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2802
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerKeyFlag()Z
    .locals 2

    .prologue
    .line 1801
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPowerKeyFlag()Z

    move-result v0

    .line 1804
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredNetworkType()I
    .locals 2

    .prologue
    .line 2491
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType()I

    move-result v0

    .line 2494
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRejectAllCalls()Z
    .locals 3

    .prologue
    .line 2723
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] getRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    return v0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 1261
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 1262
    :cond_0
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1268
    :goto_0
    return-object v0

    .line 1266
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1268
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 2

    .prologue
    .line 1639
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    .line 1642
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSubsidyLockTypes()I
    .locals 2

    .prologue
    .line 1572
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubsidyLockTypes()I

    move-result v0

    .line 1575
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUSSDVerificationStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2554
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStatus()Ljava/lang/String;

    move-result-object v0

    .line 2557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUSSDVerificationStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2569
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUSSDVerificationStrings()[Ljava/lang/String;

    move-result-object v0

    .line 2572
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTLoopBackMode()Z
    .locals 2

    .prologue
    .line 1900
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTLoopBackMode()Z

    move-result v0

    .line 1903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVTSimulatedMode()Z
    .locals 2

    .prologue
    .line 1885
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVTSimulatedMode()Z

    .line 1888
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCountExt(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2914
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCardExt(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2905
    const/4 v0, 0x0

    return v0
.end method

.method public hasVTCall()Z
    .locals 2

    .prologue
    .line 1925
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasVTCall()Z

    move-result v0

    .line 1928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htcCdmaEndCall()Z
    .locals 2

    .prologue
    .line 1728
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaEndCall()Z

    move-result v0

    .line 1731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 2

    .prologue
    .line 1701
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcCdmaExitRadioPowerSaveMode()V

    .line 1704
    :cond_0
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 2

    .prologue
    .line 1712
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->htcModemLinkOn()Z

    move-result v0

    .line 1715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallWaiting()Z
    .locals 2

    .prologue
    .line 1819
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isCallWaiting()Z

    move-result v0

    .line 1822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .prologue
    .line 1739
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isFdnEnabled()Z

    move-result v0

    .line 1742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInService(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 3023
    const/4 v0, 0x0

    return v0
.end method

.method public isUimPinEnabled()Z
    .locals 1

    .prologue
    .line 2847
    const/4 v0, 0x0

    return v0
.end method

.method public launchCallForwardingSettings()V
    .locals 3

    .prologue
    .line 2733
    const-string v1, "HtcTelephony"

    const-string v2, "[NFC] launchCallForwardingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2737
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2738
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2739
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2740
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2742
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 2793
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2794
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2795
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyKeyEvent keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 2798
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 4
    .parameter "busy"

    .prologue
    .line 2779
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2780
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2781
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyScreenBusy busy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->updateIdleScreenState(Z)V

    .line 2784
    :cond_0
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 1156
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1157
    :cond_0
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1159
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< openIccLogicalChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public performHtcPhoneAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 2591
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->performHtcPhoneAction(I)V

    .line 2594
    :cond_0
    return-void
.end method

.method public performHtcPhoneActionExt(II)V
    .locals 2
    .parameter "action"
    .parameter "phoneType"

    .prologue
    .line 3226
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    return-void
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randu"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestCW_UW_DREG()V
    .locals 2

    .prologue
    .line 2679
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_DREG()V

    .line 2682
    :cond_0
    return-void
.end method

.method public requestCW_UW_REG()V
    .locals 2

    .prologue
    .line 2672
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestCW_UW_REG()V

    .line 2675
    :cond_0
    return-void
.end method

.method public requestEhrpdDomainNameChangeState()I
    .locals 2

    .prologue
    .line 2527
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestEhrpdDomainNameChangeState()I

    move-result v0

    .line 2530
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetDOMAIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetEhrpdDeviceCapability()I
    .locals 2

    .prologue
    .line 2543
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDeviceCapability()I

    move-result v0

    .line 2546
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetEhrpdDisableCapability()I
    .locals 2

    .prologue
    .line 2535
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestGetEhrpdDisableCapability()I

    move-result v0

    .line 2538
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 1221
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPU()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 1207
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetLTERFBandInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3194
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    const/16 v2, 0x98

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3197
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetLTETxRxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3186
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephony"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    const/16 v2, 0x96

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3189
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1201
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetPCSCF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "ifc_name"

    .prologue
    .line 1091
    const/16 v1, 0x7b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1092
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1093
    const/4 v0, 0x0

    .line 1095
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 1229
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 2

    .prologue
    .line 1087
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestISIMRead(IIIII)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 2638
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->requestISIMRead(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 2641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 1244
    if-nez p1, :cond_0

    .line 1245
    const-string v1, "HtcTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_0
    return-object v0

    .line 1249
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1250
    const-string v1, "HtcTelephony"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1256
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    .line 2689
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2690
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1046
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestQueryISIMSupported()Z
    .locals 2

    .prologue
    .line 2629
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestQueryISIMSupported()Z

    move-result v0

    .line 2632
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestResetWSIMState()Z
    .locals 2

    .prologue
    .line 2654
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->requestResetWSIMState()Z

    move-result v0

    .line 2657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randssd"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authbs"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSendKddiSmsDeliver([B)Landroid/os/Bundle;
    .locals 1
    .parameter "data"

    .prologue
    .line 3179
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSetEhrpdDisableCapability(I)V
    .locals 2
    .parameter "ehrpdmode"

    .prologue
    .line 2520
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetEhrpdDisableCapability(I)V

    .line 2523
    :cond_0
    return-void
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2698
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetFastDormancy: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2701
    :cond_0
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 2646
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2649
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestSetLBSNTFY(I)V
    .locals 2
    .parameter "lbsvalue"

    .prologue
    .line 2664
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->requestSetLBSNTFY(I)V

    .line 2667
    :cond_0
    return-void
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1433
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetMultiRABTrafficThrottling: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public resetPdnForSettingsChange()V
    .locals 2

    .prologue
    .line 1963
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->resetPdnForSettingsChange()V

    .line 1966
    :cond_0
    return-void
.end method

.method public resetPdnForSettingsChange2()V
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    const/16 v0, 0xa5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->sendRequestAsync(I)V

    .line 2439
    :cond_0
    return-void
.end method

.method public sendAT_BRIC()V
    .locals 2

    .prologue
    .line 1650
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->sendAT_BRIC()V

    .line 1653
    :cond_0
    return-void
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1686
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendAT_PushMail(II)V

    .line 1689
    :cond_0
    return-void
.end method

.method public sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 1749
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendAllowedCSIMCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1752
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuth3GReq([B[B)[B
    .locals 2
    .parameter "szRAND"
    .parameter "szAUTN"

    .prologue
    .line 1861
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->sendCmmbAuth3GReq([B[B)[B

    move-result-object v0

    .line 1864
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendCmmbAuthGSMReq([B)[B
    .locals 2
    .parameter "szRAND"

    .prologue
    .line 1869
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendCmmbAuthGSMReq([B)[B

    move-result-object v0

    .line 1872
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendLanguageChange(I)V
    .locals 2
    .parameter "languageCode"

    .prologue
    .line 2617
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->sendLanguageChange(I)V

    .line 2620
    :cond_0
    return-void
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 3162
    const/4 v0, 0x0

    return v0
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 1828
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setCFUNumber(ZLjava/lang/String;)Z

    move-result v0

    .line 1831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 1313
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    const-string v1, "HtcTelephony"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_0
    return-void

    .line 1317
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1318
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1319
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1321
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1323
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1324
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1325
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephony;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1327
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephony;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 1425
    :cond_0
    return-void
.end method

.method public setKddiOtaStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 3174
    return-void
.end method

.method public setPdnSettings(ILjava/lang/String;)V
    .locals 2
    .parameter "profileSlot"
    .parameter "settings"

    .prologue
    .line 1956
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setPdnSettings(ILjava/lang/String;)V

    .line 1959
    :cond_0
    return-void
.end method

.method public setPdnSettings2([Ljava/lang/String;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->initSignatureChecking(Landroid/content/Context;)V

    .line 2250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcTelephony;->callingWithPlatformSignature(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    const/16 v0, 0xa3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2253
    :cond_0
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "activePhone"

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1102
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPowerKeyFlag()V
    .locals 2

    .prologue
    .line 1793
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setPowerKeyFlag()V

    .line 1796
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2499
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(I)V

    .line 2502
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2813
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 2814
    const/16 v1, 0x94

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2815
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2816
    const/4 v1, 0x1

    .line 2819
    .end local v0           #err:Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRejectAllCalls(Z)V
    .locals 3
    .parameter "reject"

    .prologue
    .line 2712
    const-string v0, "HtcTelephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] setRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephony;->rejectAll:Z

    .line 2714
    return-void
.end method

.method public setTimeZone(ZI)V
    .locals 2
    .parameter "sign"
    .parameter "offset"

    .prologue
    .line 1676
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTimeZone(ZI)V

    .line 1679
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 2562
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStatus(Ljava/lang/String;)V

    .line 2565
    :cond_0
    return-void
.end method

.method public setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ussd"
    .parameter "hexCode"
    .parameter "digits"

    .prologue
    .line 2581
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_0
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVTLoopBackMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1893
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTLoopBackMode(Z)V

    .line 1896
    :cond_0
    return-void
.end method

.method public setVTSimulatedMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1878
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVTSimulatedMode(Z)V

    .line 1881
    :cond_0
    return-void
.end method

.method public showIncallScreen()V
    .locals 0

    .prologue
    .line 2808
    return-void
.end method

.method public supplyPinExt(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pin"
    .parameter "phoneType"

    .prologue
    .line 3216
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPukExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "phoneType"

    .prologue
    .line 3211
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    const/4 v0, 0x0

    return v0
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 1587
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1590
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchHoldAndActiveCall()V
    .locals 2

    .prologue
    .line 1785
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->switchHoldAndActiveCall()V

    .line 1788
    :cond_0
    return-void
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1144
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 1150
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephony;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newpin"

    .prologue
    .line 1559
    const-string v0, "HtcTelephony"

    const-string v1, "implement in phone app and should not call here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephony;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1562
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 4
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1068
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1081
    return-void
.end method
