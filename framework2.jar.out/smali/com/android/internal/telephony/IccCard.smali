.class public Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfIccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$4;,
        Lcom/android/internal/telephony/IccCard$State;,
        Lcom/android/internal/telephony/IccCard$IccCardState;,
        Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;
    }
.end annotation


# static fields
.field public static final CARD_IS_3GPP:Z = true

.field public static final CARD_IS_NOT_3GPP:Z = false

.field private static final EVENT_AUTO_VERIFY_MSG:I = 0x3c

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xf

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field private static final EVENT_CHECKPIN2_DONE:I = 0x3e

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x3f6

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x3f4

.field protected static final EVENT_GET_ICC_DETAIL_STATUS_DONE:I = 0x32

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_TYPE_DONE:I = 0x38

.field protected static final EVENT_GET_SUBSCRIPTION_SOURCE:I = 0x36

.field protected static final EVENT_GET_SUBSIDY_LOCK_TYPES_DONE:I = 0x33

.field protected static final EVENT_ICC_LOCKED:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field protected static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0x3fa

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x3f5

.field private static final EVENT_PIN1PUK1_DONE:I = 0x3a

.field private static final EVENT_PIN2PUK2_DONE:I = 0x3b

.field private static final EVENT_PIN2PUK2_DONE_VIA_ATD:I = 0x3d

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_ON:I = 0x10

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x3f9

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field protected static final EVENT_SET_SUBSIDY_LOCK_TYPE_DONE:I = 0x34

.field protected static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x3f8

.field private static final EVENT_SIM_IO_DONE:I = 0x3f7

.field protected static final EVENT_SUBSCRIPTION_SOURCE_CHANGED:I = 0x35

.field public static final INTENT_KEY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "ICC_OPERATOR_NUMERIC"

.field public static final INTENT_KEY_ICC_PROVISIONED:Ljava/lang/String; = "POVISIONED"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_ICC_TYPE:Ljava/lang/String; = "ICC_TYPE"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_KEY_LOCKED_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final INTENT_KEY_PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_DETAIL_STATUS:Ljava/lang/String; = "IccStatusInfo"

.field public static final INTENT_VALUE_ICC_EXPIRED:Ljava/lang/String; = "ICC_EXPIRED"

.field public static final INTENT_VALUE_ICC_FAIL:Ljava/lang/String; = "ICC_FAIL"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_ABSENT:Ljava/lang/String; = "ICC_HOT_SWAP_ABSENT"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED_ERROR:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_INVALID:Ljava/lang/String; = "SIM INVALID"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK:Ljava/lang/String; = "LOADED_UNDER_NETWORK_LOCK"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_IMEI_LOCKED:Ljava/lang/String; = "IMEI_LOCK"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field public static final INTENT_VALUE_PERM_BLOCKED:Ljava/lang/String; = "PERM_BLOCKED"

.field public static final UICC_TYPE_2G:I = 0x0

.field public static final UICC_TYPE_3G:I = 0x1

.field public static final UICC_TYPE_4G:I = 0x2

.field public static mHotSwap:I


# instance fields
.field private final INVALID_INDEX:I

.field protected is3gpp:Z

.field private isHotSwapInserted:Z

.field protected isSubscriptionFromIccCard:Z

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field protected mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field protected mCdmaSubscriptionSource:I

.field mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccExpired:Z

.field private mIccExpiredRegistrants:Landroid/os/RegistrantList;

.field private mIccFailRegistrants:Landroid/os/RegistrantList;

.field private mIccFdnEnabled:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

.field private mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

.field private mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field protected mIccHotSwapHandler:Landroid/os/Handler;

.field private mIccPinLocked:Z

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected mIccStatusInfo:[I

.field private mImeiLockedRegistrants:Landroid/os/RegistrantList;

.field protected mLogTag:Ljava/lang/String;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mReadyRegistrants:Landroid/os/RegistrantList;

.field protected mRuimReadyRegistrants:Landroid/os/RegistrantList;

.field protected mState:Lcom/android/internal/telephony/IccCard$State;

.field private final mStateMonitor:Ljava/lang/Object;

.field protected mSubsidyLockTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/IccCard;->mHotSwap:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "phone"
    .parameter "logTag"
    .parameter "is3gpp"
    .parameter "dbg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 88
    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    .line 93
    iput-object v4, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    .line 113
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 120
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSubscriptionSource:I

    .line 258
    sget-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 265
    sget-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    .line 329
    iput v1, p0, Lcom/android/internal/telephony/IccCard;->INVALID_INDEX:I

    .line 1515
    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 2398
    new-instance v0, Lcom/android/internal/telephony/IccCard$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$3;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    .line 429
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 430
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 431
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Creating card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 433
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 439
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_3

    .line 442
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 443
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3f8

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    const/16 v2, 0x3fa

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 488
    return-void

    .line 431
    :cond_2
    const-string v0, "3gpp2"

    goto/16 :goto_0

    .line 446
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 448
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    goto :goto_1

    .line 446
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_2

    .line 448
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/IccCardApplication$AppState;)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/IccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->handleCdmaSubscriptionSource()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/IccCardStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccDetailStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method private checkAllAppsState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 6
    .parameter "csimState"
    .parameter "usimState"

    .prologue
    const/4 v5, -0x1

    .line 2174
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v3, :cond_4

    .line 2175
    :cond_0
    const/4 v2, 0x1

    .line 2176
    .local v2, isReady:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2177
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 2178
    .local v1, iccapp:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v4, :cond_3

    .line 2179
    const/4 v2, 0x0

    .line 2184
    .end local v1           #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    if-nez v2, :cond_4

    .line 2185
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 2198
    .end local v0           #i:I
    .end local v2           #isReady:Z
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .line 2176
    .restart local v0       #i:I
    .restart local v1       #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v2       #isReady:Z
    .restart local p1
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2189
    .end local v0           #i:I
    .end local v1           #iccapp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #isReady:Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2190
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    if-ne v5, v3, :cond_2

    move-object p1, p2

    .line 2193
    goto :goto_1

    .line 2195
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    if-eq v5, v3, :cond_2

    move-object p1, p2

    .line 2196
    goto :goto_1
.end method

.method private checkCardState(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 5
    .parameter "cardStatus"

    .prologue
    .line 2696
    if-eqz p1, :cond_4

    .line 2697
    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2698
    .local v1, newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFail()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2699
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2703
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    .line 2704
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCardState() OldState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    if-eq v2, v1, :cond_4

    .line 2708
    sget-object v2, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    if-ne v1, v2, :cond_3

    .line 2709
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.htc.intent.action.SIMDetectedNotify"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2710
    .local v0, bc:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2712
    .end local v0           #bc:Landroid/content/Intent;
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard;->mOldCardState:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 2715
    .end local v1           #newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    :cond_4
    return-void

    .line 2700
    .restart local v1       #newState:Lcom/android/internal/telephony/IccCard$IccCardState;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardNotInit()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2701
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_ABSENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    goto :goto_0
.end method

.method private convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I
    .locals 2
    .parameter "perso_substate"

    .prologue
    .line 795
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 807
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 797
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 799
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 801
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 803
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 805
    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAppState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 4
    .parameter "appIndex"

    .prologue
    .line 2205
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2215
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_2

    .line 2216
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2221
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present, return unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 2257
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_0
    return-object v1

    .line 2208
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2225
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2229
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2230
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2232
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2233
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2235
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2236
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2238
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2239
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2242
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    if-eqz v1, :cond_7

    .line 2243
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2246
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2247
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2249
    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2250
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2253
    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isIMEILocked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2254
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2257
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "preferredState"

    .prologue
    .line 2262
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_1

    .line 2282
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 2263
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    goto :goto_0

    .line 2266
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_3

    .line 2267
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2271
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_6

    .line 2273
    :cond_5
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2277
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p2, v0, :cond_0

    .line 2278
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_7

    move-object p1, p2

    goto :goto_0

    :cond_7
    move-object p1, p3

    .line 2282
    goto :goto_0
.end method

.method private getFakeIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    .locals 3

    .prologue
    .line 1497
    new-instance v1, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 1498
    .local v1, status:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 1499
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 1500
    new-instance v0, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 1501
    .local v0, dummyIccCardApp:Lcom/android/internal/telephony/IccCardApplication;
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 1502
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 1503
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 1504
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 1505
    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 1506
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 1507
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 1508
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 1509
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 1511
    return-object v1
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 1089
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    :goto_0
    return-void

    .line 1097
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v0

    .line 1099
    .local v0, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v0, :cond_1

    .line 1100
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCardProxy;->update(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 1109
    .end local v0           #iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    .line 1110
    .local v1, newIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v2, :cond_3

    .line 1113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "mIccCardStatus is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_0

    .line 1116
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1117
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getIccDetailStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 1126
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on getting SIM Detail status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 1134
    .local v0, data:[B
    if-eqz v0, :cond_2

    array-length v2, v0

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 1136
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "Error on getting incorrect length of data."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->resetIccDetailStatus()V

    goto :goto_0

    .line 1142
    :cond_3
    const/16 v1, 0x12

    .local v1, i:I
    :goto_1
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    add-int/lit8 v3, v1, -0x12

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v3

    .line 1142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 1149
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error on getting subsidy lock types."

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    .line 1158
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subsidy Lock type(s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 5

    .prologue
    .line 2009
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v2, :cond_0

    .line 2010
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .line 2012
    .local v1, newSubscriptionSource:I
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Cdma subscription source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2017
    .local v0, isNewSubFromRuim:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eq v0, v2, :cond_0

    .line 2018
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    .line 2020
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 2023
    .end local v0           #isNewSubFromRuim:Z
    .end local v1           #newSubscriptionSource:I
    :cond_0
    return-void

    .line 2014
    .restart local v1       #newSubscriptionSource:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 19
    .parameter "newCardStatus"

    .prologue
    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    .line 1183
    .local v6, oldRuimState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1184
    .local v7, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .line 1188
    .local v5, newState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccCard;->checkCardState(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 1192
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->handleIfGsmUmtsAppStateChanged()V

    .line 1196
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_0

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v5, v14, :cond_1

    :cond_0
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_9

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_9

    :cond_1
    const/4 v13, 0x1

    .line 1200
    .local v13, transitionedIntoPinLocked:Z
    :goto_0
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_a

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_a

    const/4 v9, 0x1

    .line 1201
    .local v9, transitionedIntoIccFail:Z
    :goto_1
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_b

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_b

    const/4 v10, 0x1

    .line 1203
    .local v10, transitionedIntoImeiLocked:Z
    :goto_2
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_c

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_c

    const/4 v8, 0x1

    .line 1204
    .local v8, transitionedIntoAbsent:Z
    :goto_3
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_d

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_d

    const/4 v11, 0x1

    .line 1206
    .local v11, transitionedIntoNetworkLocked:Z
    :goto_4
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_e

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_e

    const/4 v12, 0x1

    .line 1208
    .local v12, transitionedIntoPermBlocked:Z
    :goto_5
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_f

    const/4 v4, 0x1

    .line 1210
    .local v4, isIccCardRemoved:Z
    :goto_6
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v14, :cond_10

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v3, 0x1

    .line 1213
    .local v3, isIccCardAdded:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v15

    .line 1214
    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1222
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_11

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_11

    .line 1223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1231
    :cond_2
    :goto_8
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v14

    sget-object v16, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 1232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1234
    :cond_3
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v13, :cond_4

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    if-nez v8, :cond_4

    if-eqz v11, :cond_5

    .line 1242
    :cond_4
    const-string v14, "Notifying: NV ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v14, Lcom/android/internal/telephony/BaseCommands;

    iget-object v14, v14, Lcom/android/internal/telephony/BaseCommands;->mNVReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1248
    :cond_5
    if-eqz v13, :cond_12

    .line 1249
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_6

    const-string v14, "Notify SIM pin or puk locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1250
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    .line 1253
    .local v2, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v2, :cond_7

    .line 1254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x32

    const/16 v16, 0x32

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 1322
    .end local v2           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_7
    :goto_9
    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v14, :cond_8

    sget-object v14, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v14, :cond_8

    .line 1323
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->notifyIccCardReady()V

    .line 1342
    :cond_8
    :goto_a
    return-void

    .line 1196
    .end local v3           #isIccCardAdded:Z
    .end local v4           #isIccCardRemoved:Z
    .end local v8           #transitionedIntoAbsent:Z
    .end local v9           #transitionedIntoIccFail:Z
    .end local v10           #transitionedIntoImeiLocked:Z
    .end local v11           #transitionedIntoNetworkLocked:Z
    .end local v12           #transitionedIntoPermBlocked:Z
    .end local v13           #transitionedIntoPinLocked:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1200
    .restart local v13       #transitionedIntoPinLocked:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1201
    .restart local v9       #transitionedIntoIccFail:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1203
    .restart local v10       #transitionedIntoImeiLocked:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1204
    .restart local v8       #transitionedIntoAbsent:Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1206
    .restart local v11       #transitionedIntoNetworkLocked:Z
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1208
    .restart local v12       #transitionedIntoPermBlocked:Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1210
    .restart local v4       #isIccCardRemoved:Z
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1227
    .restart local v3       #isIccCardAdded:Z
    :cond_11
    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 1229
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 1234
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 1259
    :cond_12
    if-eqz v9, :cond_15

    .line 1260
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0x50

    if-ne v14, v15, :cond_13

    .line 1261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x38

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    goto :goto_9

    .line 1263
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_14

    const-string v14, "Notify SIM failure."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1264
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1265
    const-string v14, "ICC_FAIL"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1268
    :cond_15
    if-eqz v8, :cond_17

    .line 1269
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_16

    const-string v14, "Notify SIM missing."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1270
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1271
    const-string v14, "ABSENT"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0x23f

    if-ne v14, v15, :cond_7

    .line 1275
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mCurrentAction:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v15, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    if-ne v14, v15, :cond_7

    .line 1276
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->isHotSwapInserted:Z

    .line 1277
    const-string v14, "ICC_HOT_SWAP_INSERTED_ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccCard;->setIccCardRemovedOrInsertedError(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1281
    :cond_17
    if-eqz v11, :cond_18

    .line 1290
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x33

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 1294
    :cond_18
    if-eqz v10, :cond_7

    .line 1295
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_19

    const-string v14, "Notify IMEI locked."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1296
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v14}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1297
    const-string v14, "IMEI_LOCK"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1325
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v14, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-eqz v14, :cond_8

    .line 1326
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    instance-of v14, v14, Lcom/android/internal/telephony/cdma/CdmaLteUiccFileHandler;

    if-nez v14, :cond_1c

    .line 1329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/IccFileHandler;->setAid(Ljava/lang/String;)V

    .line 1333
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyIccCardReady()V

    .line 1338
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccRecords;->onReady()V

    goto/16 :goto_a
.end method

.method private handleIfGsmUmtsAppStateChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2654
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v3, :cond_0

    .line 2655
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-lez v3, :cond_0

    .line 2656
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .line 2657
    .local v2, idx:I
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 2682
    .end local v2           #idx:I
    :cond_0
    :goto_0
    return-void

    .line 2660
    .restart local v2       #idx:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2661
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2662
    .local v1, appState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-nez v3, :cond_3

    .line 2663
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2671
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    .line 2673
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v1, :cond_0

    .line 2674
    iput-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 2675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIfGsmUmtsAppStateChanged mIccGsmUmtsAppState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2676
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 2677
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppState:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-direct {v4, v6, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2664
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v3, :cond_4

    .line 2665
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    goto :goto_1

    .line 2666
    :cond_4
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsApp:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 1349
    const/4 v2, 0x0

    .line 1355
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1368
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1370
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x1040422

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x1040423

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x1040424

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1381
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1382
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1383
    return-void

    .line 1370
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x104041f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1372
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x1040420

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1409
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1410
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1415
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1416
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 1417
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1416
    goto :goto_1

    .line 1419
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1390
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1391
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1396
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1397
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 1398
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1397
    goto :goto_1

    .line 1400
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V
    .locals 3
    .parameter "provisioned"
    .parameter "uicc_type"
    .parameter "operator"

    .prologue
    .line 1479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1481
    const-string v1, "POVISIONED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    const-string v1, "ICC_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1484
    const-string v1, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_EXTRA_SIM_STATE_CHANGED provisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uicc_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1489
    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 1425
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .line 1426
    .local v2, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->hideSimLockFromUpperLayer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1428
    if-eqz p1, :cond_0

    .line 1429
    const-string v3, "NOT_READY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "READY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IMSI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LOADED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PERM_DISABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SIM INVALID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_FAIL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_EXPIRED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PERM_BLOCKED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1452
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1455
    .local v1, operator:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    const-string v3, "ss"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    const-string v3, "reason"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1467
    const-string v3, "IccStatusInfo"

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1470
    const-string v3, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1474
    :cond_1
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1475
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #operator:Ljava/lang/String;
    :goto_0
    return-void

    .line 1445
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block SIM lock notify - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    .line 1033
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1036
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1048
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v4, 0x9

    .line 1002
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1004
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1015
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 846
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 855
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changePin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 860
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 862
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 871
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public checkPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "onComplete"

    .prologue
    .line 876
    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 2626
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Disposing card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_4

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccHotSwapHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 517
    :cond_3
    return-void

    .line 491
    :cond_4
    const-string v0, "3gpp2"

    goto :goto_0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 2617
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 2629
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f7

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2631
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccCard] Finalized card type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_1

    const-string v0, "3gpp"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void

    .line 520
    :cond_1
    const-string v0, "3gpp2"

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2336
    const-string v0, ""

    .line 2337
    .local v0, aid:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v4, :cond_0

    move-object v1, v0

    .line 2354
    .end local v0           #aid:Ljava/lang/String;
    .local v1, aid:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2341
    .end local v1           #aid:Ljava/lang/String;
    .restart local v0       #aid:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getCurrentApplicationIndex()I

    move-result v3

    .line 2343
    .local v3, appIndex:I
    if-ltz v3, :cond_2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 2344
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v2

    .line 2345
    .local v2, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v2, :cond_1

    .line 2346
    iget-object v0, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .end local v2           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_1
    move-object v1, v0

    .line 2354
    .end local v0           #aid:Ljava/lang/String;
    .restart local v1       #aid:Ljava/lang/String;
    goto :goto_0

    .line 2348
    .end local v1           #aid:Ljava/lang/String;
    .restart local v0       #aid:Ljava/lang/String;
    .restart local v2       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] getAid: no current application index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2351
    .end local v2           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IccCard] getAid: Invalid Subscription Application index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2299
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 2307
    :cond_0
    :goto_0
    return-object v0

    .line 2301
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2302
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2303
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, p1, :cond_0

    .line 2301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    move-object v0, v2

    .line 2307
    goto :goto_0
.end method

.method protected getCurrentApplicationIndex()I
    .locals 1

    .prologue
    .line 2328
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 2331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    return-object v0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 2026
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-nez v3, :cond_1

    .line 2029
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 2169
    :cond_0
    :goto_0
    return-object v0

    .line 2032
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_3

    .line 2033
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2040
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null in CDMA, return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2044
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2048
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 2054
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFail()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2056
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2057
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2059
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_5

    .line 2060
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2062
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2070
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2071
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardNotInit()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2072
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 2079
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2082
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2086
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] !mIccCardStatus.getCardState().isCardPresent(), return unkonwn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2092
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2093
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 2095
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2100
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2107
    :cond_b
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_c

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_d

    .line 2109
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2112
    :cond_d
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_11

    .line 2115
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 2117
    .local v0, csimState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 2120
    .local v2, usimState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2122
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_f

    .line 2127
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_f

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_f

    .line 2128
    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/IccCard;->getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto/16 :goto_0

    .line 2136
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_10

    .line 2138
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/IccCard;->checkAllAppsState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto/16 :goto_0

    .line 2142
    :cond_10
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 2145
    goto/16 :goto_0

    .line 2151
    .end local v0           #csimState:Lcom/android/internal/telephony/IccCard$State;
    .end local v2           #usimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2153
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] return default state-> UNKNOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2161
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2162
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-nez v3, :cond_13

    .line 2163
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "mIccCardStatus.getNumApplications() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 2169
    :cond_13
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getIccPhoneType()I
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 1

    .prologue
    .line 2579
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 1

    .prologue
    .line 2586
    const/4 v0, 0x0

    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRuimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->is3gpp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isSubscriptionFromIccCard:Z

    if-nez v0, :cond_1

    .line 417
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 424
    :goto_0
    return-object v0

    .line 412
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 424
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getSubsidyLock()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    return v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 5
    .parameter "querySetting"
    .parameter "onComplete"

    .prologue
    .line 812
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 815
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 821
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .line 823
    .local v2, index:I
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 824
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_0

    .line 825
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->convertQmiSubsidyLockType(Lcom/android/internal/telephony/IccCardApplication$PersoSubState;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    .line 827
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/IccCard;->mSubsidyLockTypes:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 828
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 833
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v1           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v2           #index:I
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSubsidyLock] querySetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    .line 2316
    const/4 v0, 0x0

    .line 2319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 2286
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return v2

    .line 2288
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2289
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 2290
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, p1, :cond_2

    .line 2291
    const/4 v2, 0x1

    goto :goto_0

    .line 2288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 2601
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyIccCardReady()V
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->onReady()V

    .line 2690
    :cond_0
    return-void
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 2621
    return-void
.end method

.method public queryIccDetailStatus()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 886
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 535
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 537
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 542
    :cond_0
    return-void
.end method

.method public registerForIccExpired(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 614
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 616
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 621
    :cond_0
    return-void
.end method

.method public registerForIccFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 584
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 586
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isIccFail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 591
    :cond_0
    return-void
.end method

.method public registerForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2640
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2642
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2643
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v1, :cond_0

    .line 2644
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    .line 2646
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->handleIfGsmUmtsAppStateChanged()V

    .line 2647
    return-void
.end method

.method public registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 598
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 605
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 569
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 571
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 576
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 552
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 554
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 557
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 559
    :cond_0
    return-void
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 629
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 631
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    .line 635
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 637
    :cond_0
    monitor-exit v2

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRuimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 655
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 660
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getRuimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_0

    .line 661
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 663
    :cond_0
    monitor-exit v2

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestISIMRead(IIIIILandroid/os/Message;)V
    .locals 7
    .parameter "command"
    .parameter "field"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "onComplete"

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->requestISIMRead(IIIIILandroid/os/Message;)V

    .line 2563
    return-void
.end method

.method public requestQueryISIMSupported(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryISIMSupported(Landroid/os/Message;)V

    .line 2559
    return-void
.end method

.method public requestResetWSIMState(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestResetWSIMState(Landroid/os/Message;)V

    .line 2571
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "command"
    .parameter "onComplete"

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V

    .line 2567
    return-void
.end method

.method protected resetIccDetailStatus()V
    .locals 3

    .prologue
    .line 1162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccStatusInfo:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method public setIccCardExpired(Z)V
    .locals 2
    .parameter "expired"

    .prologue
    .line 2382
    if-eqz p1, :cond_2

    .line 2383
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1

    .line 2384
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "Notify SIM Expired."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2385
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    .line 2386
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 2387
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 2388
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2389
    const-string v0, "ICC_EXPIRED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    :cond_1
    :goto_0
    return-void

    .line 2392
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpired:Z

    goto :goto_0
.end method

.method public setIccCardRemovedOrInsertedError(Ljava/lang/String;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 2359
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIccCardRemovedOrInsertedError() - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 2361
    :cond_0
    const-string v2, "ICC_HOT_SWAP_ABSENT"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ICC_HOT_SWAP_INSERTED_ERROR"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2376
    :goto_0
    return-void

    .line 2365
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2369
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.SIMRemovedDialogActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2370
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2371
    const-string v2, "ss"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2372
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2373
    .end local v1           #newIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2374
    .local v0, activityNotFound:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0xb

    .line 962
    const/16 v4, 0xf

    .line 967
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 970
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .line 972
    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 984
    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x8

    .line 925
    const/4 v4, 0x7

    .line 929
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 932
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    .line 934
    .local v7, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v7, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 946
    .end local v7           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setInvalidICCCard()V
    .locals 0

    .prologue
    .line 2609
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "onComplete"

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubsidyLock] subsidyType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 839
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 760
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 695
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 697
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 705
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 724
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 726
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 735
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 709
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 711
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 720
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    .line 739
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 741
    .local v0, handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 750
    .end local v0           #handlerIccFile:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2ViaATD()V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 546
    return-void
.end method

.method public unregisterForIccExpired(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccExpiredRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 625
    return-void
.end method

.method public unregisterForIccFail(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 595
    return-void
.end method

.method public unregisterForIccGsmUmtsAppStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccGsmUmtsAppRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2651
    return-void
.end method

.method public unregisterForImeiLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 609
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 580
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 563
    return-void
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 643
    monitor-exit v1

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRuimReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mRuimReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "iccState"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void
.end method
