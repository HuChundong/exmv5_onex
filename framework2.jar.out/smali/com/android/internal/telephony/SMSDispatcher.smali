.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;,
        Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;,
        Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$Injector;
    }
.end annotation


# static fields
.field public static final CDMA_SMS_Dispatcher:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final COMPILE_OPTION_OMA_SUPPORT:Z = false

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DispatcherTypeInIntent:Ljava/lang/String; = "SmsMessageType"

.field protected static final EVENT_ADD_REQUEST_IN_QUEUE:I = 0x19

.field protected static final EVENT_CHECK_TRACKER_IN_QUEUE:I = 0x1a

.field protected static final EVENT_DISPATCH_MESSAGE:I = 0x17

.field static final EVENT_ECM_CALLBACK_MODE_CHANGE:I = 0x16

.field static final EVENT_GET_CSCB_COMPLETE:I = 0xf

.field protected static final EVENT_GET_RADIO_TECH_VERIZON:I = 0x21

.field private static final EVENT_GET_SMSC:I = 0x66

.field private static final EVENT_GET_TPMR:I = 0x15

.field static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x1e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x1f

.field private static final EVENT_MT_WRITE_TO_UICC:I = 0x68

.field static final EVENT_NEW_CB:I = 0xd

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_OTAPA_DIALOG:I = 0x20

.field protected static final EVENT_RADIO_ON:I = 0xc

.field public static final EVENT_RTT_EVDO_ERROR_CODE_DISPATCH:I = 0x11

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_CB_ENTRY:I = 0x10

.field static final EVENT_SET_CSCB_COMPLETE:I = 0xe

.field private static final EVENT_SET_SMSC:I = 0x67

.field protected static final EVENT_SHOW_SPRINT_ROAM_DLG:I = 0x18

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field public static final EVENT_WAIT_ACK_TIMEOUT:I = 0x12

.field public static final GSM_SMS_Dispatcher:I = 0x1

.field private static final HTC_SEND_RETRY_DELAY:[I = null

.field public static final IMS_SMS_Dispatcher:I = 0x3

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I = 0x6

.field private static final MAX_SEND_RETRIES_OF_VERIZON_LTE:I = 0x5

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final MSG_FILTER_CONCATE_FAIL:I = 0x2

.field private static final MSG_FILTER_CONCATE_RETRY:I = 0x1

.field private static final MSG_FILTER_CONCATE_SENT:I = 0x0

.field private static final MSG_SPRINT_ROAMING_GUIDE:I = 0x1

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field public static final RADIO_TECH_3GPP:I = 0x1

.field public static final RADIO_TECH_3GPP2:I = 0x2

.field public static final RADIO_TECH_NONE:I = 0x0

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final ROAM_GUIDE_TAG:Ljava/lang/String; = "RoamingGuide"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x3a98

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMS"

.field public static final TELESERVICE_CHARi__DATA:B = 0x7t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_HI:B = 0x5t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_LOW:B = 0x6t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_HI:B = 0x3t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_LOW:B = 0x4t

.field public static final UNKOWN_SMS_Dispatcher:I = 0x0

.field private static final VZW_DIRECTED_SMS_INTENT:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final WAIT_ACK_TIME:I = 0x1770

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field public static WSD_ERROR_CODE_NO_SERVICE:I

.field protected static mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

.field protected static mImsRadioTech:I

.field protected static final mRawUri:Landroid/net/Uri;

.field private static mSmsMessage:Landroid/telephony/SmsMessage;

.field private static mSmsMessageBase:Lcom/android/internal/telephony/SmsMessageBase;

.field public static final mWaitRoamDialog:Ljava/lang/Object;

.field public static final mWaitSendObj:Ljava/lang/Object;

.field private static sConcatenatedRef:I

.field private static sRadioTechImsVerizon:Z


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mAckWaitMessageId:I

.field private mAlertDialogs:Ljava/util/ArrayList;

.field protected mCdmaCmasQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mConcateHandler:Landroid/os/Handler;

.field private mConcateThread:Landroid/os/HandlerThread;

.field protected mContext:Landroid/content/Context;

.field private mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mRemainingMessages:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamGuideHandler:Landroid/os/Handler;

.field private mRoamGuideThread:Landroid/os/HandlerThread;

.field private mSMSdispatcherType:I

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mTpMrForRetry:Ljava/util/ArrayList;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private m_bIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "pdu"

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 141
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pdu"

    aput-object v3, v2, v1

    const-string v3, "sequence"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "destination_port"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 249
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "raw"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 261
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    .line 274
    const/16 v2, 0x14b

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    .line 281
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 297
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    .line 324
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->COMPILE_OPTION_OMA_SUPPORT:Z

    .line 337
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    .line 357
    sput v1, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    .line 363
    sput-boolean v1, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    return-void

    :cond_0
    move v0, v1

    .line 324
    goto :goto_0

    .line 261
    nop

    :array_0
    .array-data 0x4
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 6
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 455
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 309
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAckWaitMessageId:I

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 327
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 328
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 338
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 339
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 350
    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 360
    iput-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2856
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3042
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 3044
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 457
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    .line 458
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "type"
    .parameter "wapPush"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 461
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 309
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAckWaitMessageId:I

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 327
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 328
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 338
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 339
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 350
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 360
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2856
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3042
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 3044
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    .line 463
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SMSDispatcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V

    return-void
.end method

.method private checkQueueSmsTracker()V
    .locals 17

    .prologue
    .line 2643
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsSegmentsController;->getRemainingMsgInRIL()I

    move-result v10

    .line 2644
    .local v10, remaining:I
    const-string v14, "SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkQueueSmsTracker> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    if-lez v10, :cond_1

    .line 2680
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v12

    .line 2647
    .local v12, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    .line 2648
    .local v2, controller:Lcom/android/internal/telephony/SmsSegmentsController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v11

    .line 2649
    .local v11, segCnt:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2650
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 2651
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v13

    .line 2652
    .local v13, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v12, v14}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 2650
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2654
    .end local v13           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->clearRequest()V

    goto :goto_0

    .line 2656
    .end local v3           #i:I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v9

    .line 2657
    .local v9, qSize:I
    const/4 v14, 0x7

    if-ge v14, v9, :cond_4

    const/4 v5, 0x7

    .line 2659
    .local v5, max:I
    :goto_2
    const/4 v4, 0x0

    .line 2660
    .local v4, index:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedShowRoamingGuard()Z

    move-result v1

    .line 2662
    .local v1, bShowRoaming:Z
    :goto_3
    if-ge v4, v5, :cond_0

    .line 2663
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/SmsSegmentsController;->removeRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v13

    .line 2665
    .restart local v13       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v1, :cond_7

    .line 2666
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    if-eqz v14, :cond_5

    const/4 v7, 0x1

    .line 2667
    .local v7, org1:I
    :goto_4
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    if-eqz v14, :cond_6

    const/4 v8, 0x1

    .line 2668
    .local v8, org2:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v7, v8, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2670
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2677
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #org1:I
    .end local v8           #org2:I
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 2678
    goto :goto_3

    .end local v1           #bShowRoaming:Z
    .end local v4           #index:I
    .end local v5           #max:I
    .end local v13           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    move v5, v9

    .line 2657
    goto :goto_2

    .line 2666
    .restart local v1       #bShowRoaming:Z
    .restart local v4       #index:I
    .restart local v5       #max:I
    .restart local v13       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 2667
    .restart local v7       #org1:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 2675
    .end local v7           #org1:I
    :cond_7
    iget-boolean v14, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    iget-boolean v15, v13, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_6
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1162
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1163
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1165
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3
    .parameter "tracker"

    .prologue
    const/4 v2, 0x5

    .line 2567
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v2, :cond_0

    .line 2570
    :try_start_0
    const-string v1, "SMS"

    const-string v2, "handleReachSentLimit, send message fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :goto_0
    const/4 v1, 0x1

    .line 2578
    :goto_1
    return v1

    .line 2572
    :catch_0
    move-exception v0

    .line 2573
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2577
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    .line 2578
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "appPackage"

    .prologue
    .line 2587
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2589
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2590
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 2593
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :goto_0
    return-object p1

    .line 2591
    .restart local p1
    :catch_0
    move-exception v1

    .line 2592
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2767
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2768
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x40700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEasAllowSms()Z
    .locals 1

    .prologue
    .line 3664
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->getEasAllowSms()Z

    move-result v0

    return v0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 430
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 431
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleAllPendingSmsTracker()Z
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/4 v1, 0x0

    .line 2701
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRemainingMsgInRIL()I

    move-result v2

    if-gtz v2, :cond_0

    .line 2702
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsSegmentsController;->getRequestQueueSize()I

    move-result v0

    .line 2703
    .local v0, queueMsg:I
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle request queue:size> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    if-lez v0, :cond_1

    .line 2706
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 2707
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmptyMessage(I)Z

    .line 2713
    .end local v0           #queueMsg:I
    :cond_0
    :goto_0
    return v1

    .line 2710
    .restart local v0       #queueMsg:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleGetCSCBComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 3325
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 3327
    const-string v4, "SMS"

    const-string v5, "Get CSCB info complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 3330
    .local v0, Result:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 3331
    .local v3, mode:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v0, v4

    .line 3332
    .local v2, mMsgId:Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v0, v4

    .line 3334
    .local v1, mDcs:Ljava/lang/String;
    const-string v4, "SMS"

    const-string v5, "Get CSCB info complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-Msgid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-DCS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    .end local v0           #Result:[Ljava/lang/String;
    .end local v1           #mDcs:Ljava/lang/String;
    .end local v2           #mMsgId:Ljava/lang/String;
    .end local v3           #mode:Ljava/lang/String;
    :goto_0
    return-void

    .line 3343
    :cond_0
    const-string v4, "SMS"

    const-string v5, "Get CSCB info failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    .line 1206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1208
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method private handleNewMessage(Landroid/telephony/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1147
    :try_start_0
    iget-object v4, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 1148
    .local v2, result:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1151
    if-ne v2, v1, :cond_1

    .line 1152
    .local v1, handled:Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    .end local v1           #handled:Z
    .end local v2           #result:I
    :cond_0
    :goto_1
    return-void

    .restart local v2       #result:I
    :cond_1
    move v1, v3

    .line 1151
    goto :goto_0

    .line 1154
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1155
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMS"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_1
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .parameter "ss"
    .parameter "sentIntent"

    .prologue
    .line 1600
    if-eqz p1, :cond_0

    .line 1602
    :try_start_0
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotInService, message send fail ss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1604
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1608
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 6
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "dispatcherType"
    .parameter "wapPush"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 470
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 471
    if-nez p5, :cond_6

    .line 473
    new-instance v1, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 480
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 481
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 482
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 483
    new-instance v1, Lcom/android/internal/telephony/ConcatedUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/ConcatedUtil;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    .line 484
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 485
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 488
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 492
    const-string v1, "telephony.sms.receive"

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 494
    const-string v1, "telephony.sms.send"

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 496
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsReceiveDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsSendDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x15

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForTPMR(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 534
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v1, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 553
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 562
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConcateThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 564
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 568
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_4

    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 572
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RoamGuideThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 574
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    .line 581
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/test/FakeSmsReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 593
    return-void

    .line 477
    :cond_6
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 492
    goto/16 :goto_1
.end method

.method public static isCdmaMo()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    const-string v3, "gsm.volte.ims.emulate.gsm_mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v1, :cond_0

    .line 425
    .local v0, smsformat:Ljava/lang/String;
    :goto_0
    return v2

    .line 410
    .end local v0           #smsformat:Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaMo>mImsRadioTech: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget v3, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-nez v3, :cond_2

    .line 413
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 418
    :cond_2
    const-string v1, "gsm.vzw.sms.format"

    const-string v3, "3gpp2"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .restart local v0       #smsformat:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROPERTY_VZW_MO_SMS_FORMAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "3gpp2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 4
    .parameter "apMetadata"
    .parameter "receiverMetadata"
    .parameter "packageName"

    .prologue
    .line 4083
    const/4 v0, 0x0

    .line 4086
    .local v0, bmenifestcontainkey:Z
    if-eqz p1, :cond_0

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4087
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AP metadata contain key value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    const/4 v0, 0x1

    .line 4092
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4093
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver metadata contain key value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    const/4 v0, 0x1

    .line 4097
    :cond_1
    return v0
.end method

.method public static isImsAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 374
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 375
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    const-string v2, "gsm.volte.ims.registered"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 381
    .local v0, isImsAvailable:Z
    :goto_1
    goto :goto_0

    .end local v0           #isImsAvailable:Z
    :cond_2
    move v0, v1

    .line 380
    goto :goto_1

    .line 384
    :cond_3
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isImsAvailable():mImsRadioTech> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 390
    :cond_4
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isNeedShowRoamingGuard()Z
    .locals 7

    .prologue
    .line 3633
    const/4 v0, 0x0

    .line 3635
    .local v0, bNeedShow:Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    move v1, v0

    .line 3656
    .end local v0           #bNeedShow:Z
    .local v1, bNeedShow:I
    :goto_0
    return v1

    .line 3638
    .end local v1           #bNeedShow:I
    .restart local v0       #bNeedShow:Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    move v1, v0

    .line 3639
    .restart local v1       #bNeedShow:I
    goto :goto_0

    .line 3641
    .end local v1           #bNeedShow:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3644
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3645
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3646
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v4, "international"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 3647
    const-string v4, "RoamingGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 3656
    .restart local v1       #bNeedShow:I
    goto :goto_0

    .line 3650
    .end local v1           #bNeedShow:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3651
    .restart local v2       #cr:Landroid/content/ContentResolver;
    const-string v4, "gsm"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 3652
    const-string v4, "RoamingGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSM sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isNotInService(I)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 2720
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2721
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->kddiLteIsNotInService(I)Z

    move-result v1

    .line 2731
    :goto_0
    return v1

    .line 2728
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v0

    .line 2731
    .local v0, isImsAvailable:Z
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOutOfService(II)Z
    .locals 3
    .parameter "ss"
    .parameter "errorCode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3737
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3738
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3748
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3738
    goto :goto_0

    .line 3741
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3742
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v2, v0, :cond_3

    .line 3743
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v0

    goto :goto_0

    .line 3744
    :cond_3
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 3748
    :cond_4
    if-nez p1, :cond_5

    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    if-ne p2, v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 6
    .parameter "ce"
    .parameter "tracker"

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3754
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3759
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    :cond_0
    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    .line 3775
    :cond_4
    :goto_0
    return v2

    .line 3765
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3766
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_7

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v3, v5, :cond_7

    move v0, v2

    .line 3769
    .local v0, needRetry:Z
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v3, v2, :cond_8

    .line 3770
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    move v2, v1

    goto :goto_0

    .end local v0           #needRetry:Z
    :cond_7
    move v0, v1

    .line 3766
    goto :goto_1

    .restart local v0       #needRetry:Z
    :cond_8
    move v2, v0

    .line 3771
    goto :goto_0

    .line 3775
    .end local v0           #needRetry:Z
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_a

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-lt v3, v5, :cond_4

    :cond_a
    move v2, v1

    goto :goto_0
.end method

.method private kddiLteIsNotInService(I)Z
    .locals 5
    .parameter "ss"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2737
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> dispatcher type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-ne v2, v0, :cond_2

    .line 2739
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> IMS radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    if-eq v2, v0, :cond_1

    .line 2743
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2740
    goto :goto_0

    .line 2742
    :cond_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiLteIsNotInService> ss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)V
    .locals 22
    .parameter "cb"
    .parameter "referenceNumber"
    .parameter "sequence"
    .parameter "count"

    .prologue
    .line 3139
    const-string v2, "SMS"

    const-string v3, "processCBMessagePart()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3143
    .local v21, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3148
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 3228
    :goto_0
    return-void

    .line 3150
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 3152
    .local v12, cursorCount:I
    const-string v2, "pdu"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3153
    .local v16, pduColumn:I
    const-string v2, "sequence"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3156
    .local v18, sequenceColumn:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v12, :cond_2

    .line 3157
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 3158
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v13, v2

    .line 3159
    .local v13, cursorSequence:I
    move/from16 v0, p3

    if-ne v13, v0, :cond_1

    .line 3160
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-Drop duplicate raw data! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3156
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3167
    .end local v13           #cursorSequence:I
    :cond_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-cursorCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-raw data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    add-int/lit8 v2, p4, -0x1

    if-eq v12, v2, :cond_3

    .line 3171
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3172
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-save msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 3174
    .local v20, values:Landroid/content/ContentValues;
    const-string v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    const-string v2, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3176
    const-string v2, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3177
    const-string v2, "sequence"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 3185
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3188
    .local v9, body:Ljava/lang/StringBuilder;
    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3189
    .local v17, pdus:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_4

    .line 3190
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 3191
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v13, v2

    .line 3192
    .restart local v13       #cursorSequence:I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3193
    .local v19, temp:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-get msg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    add-int/lit8 v2, v13, -0x1

    aput-object v19, v17, v2

    .line 3189
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3196
    .end local v13           #cursorSequence:I
    .end local v19           #temp:Ljava/lang/String;
    :cond_4
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-get msg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    add-int/lit8 v2, p3, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v2

    .line 3198
    const/4 v14, 0x0

    :goto_3
    move/from16 v0, p4

    if-ge v14, v0, :cond_5

    .line 3199
    aget-object v2, v17, v14

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3201
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3206
    const/4 v2, 0x1

    new-array v10, v2, [[B

    .line 3207
    .local v10, cbpdu:[[B
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v3

    aput-object v3, v10, v2

    .line 3211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3212
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3213
    .local v8, LocationBody:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCBMessagePart()-msg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    new-instance v15, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.CB_RECEIVED"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3216
    .local v15, intent:Landroid/content/Intent;
    const-string v2, "cbPdu"

    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3217
    const-string v2, "cmas"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3218
    const-string v2, "isCdma"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3220
    const-string v2, "pdus"

    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3221
    const-string v2, "gs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3222
    const-string v2, "upnum"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3223
    const-string v2, "mId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3224
    const-string v2, "dcs"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v15, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 3827
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3828
    .local v0, isCmas:Z
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCmas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCmasAckReturnEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3830
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprint()V

    .line 3831
    const/4 v1, 0x1

    .line 3835
    :cond_0
    return v1
.end method

.method private sendDatamanageIntent(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "number"
    .parameter "timestamp"
    .parameter "size"

    .prologue
    .line 1227
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.datamanager.ADD_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v0, it:Landroid/content/Intent;
    const-string v1, "SMS_MO"

    .line 1229
    .local v1, type:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework sent intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/number/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const-string v2, "remote_number"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    const-string v2, "timestamp"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1234
    const-string v2, "size"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1236
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1237
    return-void
.end method

.method private shouldWeDiscardSMS(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x7

    .line 3668
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3708
    :cond_0
    :goto_0
    return v3

    .line 3671
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 3673
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    .line 3674
    if-eqz v2, :cond_0

    aget-object v5, v2, v3

    if-eqz v5, :cond_0

    .line 3675
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 3677
    .local v1, firstMessage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3678
    const-string v5, "VZWPIN:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 3679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3680
    .local v0, bintent:Landroid/content/Intent;
    const-string v3, "com.htc.mms.PIN_NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3681
    const-string v3, "PIN_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3682
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3683
    goto :goto_0

    .line 3684
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_2
    const-string v5, "VZWNMN:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 3685
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3686
    .restart local v0       #bintent:Landroid/content/Intent;
    const-string v3, "com.htc.mms.NEW_MAIL_NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3687
    const-string v3, "NEW_MAIL_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3688
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3689
    goto :goto_0

    .line 3690
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_3
    const-string v5, "VZWUEP:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_4

    .line 3691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3692
    .restart local v0       #bintent:Landroid/content/Intent;
    const-string v3, "com.htc.mms.ACCOUNT_NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3693
    const-string v3, "ACCOUNT_CHANGE_NOTIFICATION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3694
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VZW_HUX"

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v3, v4

    .line 3695
    goto/16 :goto_0

    .line 3696
    .end local v0           #bintent:Landroid/content/Intent;
    :cond_4
    const-string v5, "VZWRSC:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    move v3, v4

    .line 3703
    goto/16 :goto_0
.end method

.method private showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    .locals 5
    .parameter "tracker"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 3608
    const-string v2, "RoamingGuide"

    const-string v3, "show dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3612
    .local v1, msg:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 3613
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 3614
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3616
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3620
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 3622
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3629
    :goto_0
    const-string v2, "RoamingGuide"

    const-string v3, "leave wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    return-void

    .line 3622
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3624
    :catch_0
    move-exception v0

    .line 3625
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RoamingGuide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait dialog exception >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final updateCallState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2865
    if-nez p1, :cond_1

    .line 2876
    :cond_0
    return-void

    .line 2867
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2868
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dialog/HtcAlertDialog;

    .line 2869
    .local v0, d:Lcom/htc/dialog/HtcAlertDialog;
    if-eqz v0, :cond_1

    .line 2870
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2871
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method protected KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3799
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3800
    return-void
.end method

.method MsgIdCbsFilter(II)Z
    .locals 1
    .parameter "msgID"
    .parameter "msgDcs"

    .prologue
    .line 3291
    const/4 v0, 0x0

    return v0
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "packageName"
    .parameter "destAddr"

    .prologue
    .line 3009
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method public abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method protected checkInSegmentToRIL(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 2687
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInSegmentToRIL> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RetryCnt> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v0, :cond_0

    .line 2690
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsSegmentsController;->checkInSegment()Z

    .line 2693
    :cond_0
    return-void
.end method

.method public checkVZWDirectedSMSV12(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .parameter "bodystr"
    .parameter "senderaddr"

    .prologue
    .line 3849
    if-nez p1, :cond_0

    .line 3850
    const/16 v18, 0x0

    .line 3961
    :goto_0
    return v18

    .line 3852
    :cond_0
    const/4 v7, 0x0

    .line 3853
    .local v7, candicatePrefixstr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 3854
    .local v13, parameterstr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 3855
    .local v6, bodylen:I
    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 3857
    .local v9, colonidx:I
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bodylen/colonidx: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    if-ltz v9, :cond_1

    const/4 v4, 0x1

    .line 3860
    .local v4, beHascolon:Z
    :goto_1
    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x1

    .line 3866
    .local v5, beVZWstarted:Z
    :goto_2
    if-nez v9, :cond_3

    .line 3867
    const/16 v18, 0x0

    goto :goto_0

    .line 3859
    .end local v4           #beHascolon:Z
    .end local v5           #beVZWstarted:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3860
    .restart local v4       #beHascolon:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 3873
    .restart local v5       #beVZWstarted:Z
    :cond_3
    if-lez v9, :cond_6

    .line 3880
    if-eqz v5, :cond_5

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3881
    :goto_3
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 3893
    :goto_4
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_8

    .line 3894
    :cond_4
    const/16 v18, 0x0

    goto :goto_0

    .line 3880
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 3891
    :cond_6
    if-eqz v5, :cond_7

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    goto :goto_4

    :cond_7
    move-object/from16 v7, p1

    goto :goto_5

    .line 3901
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 3904
    .local v3, aparray:[Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 3912
    array-length v0, v3

    move/from16 v18, v0

    div-int/lit8 v16, v18, 0x3

    .line 3914
    .local v16, setcount:I
    const/4 v14, 0x0

    .line 3915
    .local v14, pkgstr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3916
    .local v8, classstr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3917
    .local v2, ap_pfxstr:Ljava/lang/String;
    const/16 v17, 0x0

    .line 3918
    .local v17, setstartidx:I
    const/4 v11, 0x0

    .line 3919
    .local v11, ifanymatched:Z
    const/4 v15, 0x0

    .line 3920
    .local v15, prefixstr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 3921
    mul-int/lit8 v17, v10, 0x3

    .line 3922
    aget-object v14, v3, v17

    .line 3923
    add-int/lit8 v18, v17, 0x1

    aget-object v8, v3, v18

    .line 3924
    add-int/lit8 v18, v17, 0x2

    aget-object v2, v3, v18

    .line 3926
    move-object v15, v2

    .line 3932
    if-nez v4, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 3933
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3934
    :cond_9
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "prefix/parameter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    new-instance v12, Landroid/content/Intent;

    const-string v18, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3943
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12, v14, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3944
    const-string v18, "originator"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3945
    if-eqz v13, :cond_a

    .line 3946
    const-string v18, "parameters"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3949
    :cond_a
    const-string v18, "SMS"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "broadcast DirectedSMSv12 intent out to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3951
    const/4 v11, 0x1

    .line 3920
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 3954
    .end local v12           #intent:Landroid/content/Intent;
    :cond_b
    if-eqz v11, :cond_d

    .line 3955
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3957
    .end local v2           #ap_pfxstr:Ljava/lang/String;
    .end local v8           #classstr:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #ifanymatched:Z
    .end local v14           #pkgstr:Ljava/lang/String;
    .end local v15           #prefixstr:Ljava/lang/String;
    .end local v16           #setcount:I
    .end local v17           #setstartidx:I
    :cond_c
    const-string v18, "SMS"

    const-string v19, "can not got mapping of candicatePrefixstr"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_d
    const-string v18, "SMS"

    const-string v19, "checkVZWDirectedSMSV12 return false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->shouldWeDiscardSMS(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1177
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1198
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1186
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_3

    .line 1188
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1189
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 3117
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3120
    const-string v1, "SMS"

    const-string v2, "Dispatching emergency SMS CB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3128
    :goto_0
    return-void

    .line 3123
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3124
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3125
    const-string v1, "SMS"

    const-string v2, "Dispatching SMS CB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V
    .locals 10
    .parameter "cb"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3236
    const/4 v3, 0x0

    .line 3238
    .local v3, mText:Ljava/lang/String;
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2-dispatchCBMessage()-page:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcMessageHelper;->check3gppBCSMSDuplication(Landroid/content/Context;[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3288
    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v5

    if-le v5, v9, :cond_2

    .line 3248
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getSn()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPage()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getPages()I

    move-result v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->processCBMessagePart(Lcom/android/internal/telephony/gsm/CBMessage;III)V

    goto :goto_0

    .line 3251
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 3252
    if-eqz v3, :cond_0

    .line 3255
    new-array v0, v9, [[B

    .line 3256
    .local v0, cbPdu:[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v5

    aput-object v5, v0, v8

    .line 3259
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.CB_RECEIVED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3261
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "cbPdu"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3262
    const-string v5, "cmas"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/CmasMessage;->isGsmCmas(I)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3263
    const-string v5, "isCdma"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3265
    const-string v5, "pdus"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3266
    const-string v5, "gs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getGs()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3267
    const-string v5, "upnum"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getUpdatenum()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3268
    const-string v5, "mId"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getMsg_id()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3269
    const-string v5, "dcs"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getDcs()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3272
    const-string v5, "kddi.lab.test"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3273
    .local v4, testMode:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3275
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CBMessage;->getRowData()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 3277
    .local v1, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3278
    const-string v5, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3284
    .end local v1           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dispatchFakeCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V
    .locals 0
    .parameter "cbMsg"

    .prologue
    .line 3372
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V

    .line 3373
    return-void
.end method

.method public dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3352
    const/4 v2, 0x0

    .line 3354
    .local v2, result:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 3355
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 3358
    if-ne v2, v1, :cond_1

    .line 3359
    .local v1, handled:Z
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3366
    .end local v1           #handled:Z
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 3358
    goto :goto_0

    .line 3361
    :catch_0
    move-exception v0

    .line 3362
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "SMS"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3363
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_1
.end method

.method public abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus(I[[B)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"

    .prologue
    .line 2148

    invoke-static {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v1

    if-eqz v1, :miui_cond_0

    return-void

    :miui_cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2149
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2150
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2151
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2153
    const-string v1, "SmsMessageType"

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2155
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2156
    return-void
.end method

.method protected dispatchPdus(I[[BZ)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"
    .parameter "isLBS"

    .prologue
    .line 2083

    invoke-static {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v1

    if-eqz v1, :miui_cond_0

    return-void

    :miui_cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2084
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 2085
    const-string v1, "com.htc.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2089
    :goto_0
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2090
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2091
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2092
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2093
    return-void

    .line 2087
    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus(I[[BZZ)V
    .locals 3
    .parameter "nSimSmsRecordIndex"
    .parameter "pdus"
    .parameter "isLBS"
    .parameter "isEVDO"

    .prologue
    .line 2128
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v1

    if-eqz v1, :miui_cond_0

    return-void

    :miui_cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2129
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 2130
    const-string v1, "com.htc.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2134
    :goto_0
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2135
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2137
    const-string v1, "EVDOSms"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2138
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2139
    return-void

    .line 2132
    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus(Landroid/content/Intent;[[B)V
    .locals 4
    .parameter "intent"
    .parameter "pdus"

    .prologue
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v1

    if-eqz v1, :miui_cond_0

    return-void

    :miui_cond_0
    const/4 v0, 0x0

    .line 2109
    const-string v2, "lbs"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2110
    .local v1, isLBS:Z
    const-string v2, "is_cbm"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2114
    .local v0, isCBM:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 2115
    const-string v2, "com.htc.mms.transaction.LBSMESSAGE_RECEIVE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2121
    :goto_0
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2123
    return-void

    .line 2116
    :cond_1
    if-eqz v0, :cond_2

    .line 2117
    const-string v2, "com.htc.intent.action.CB_RECEIVED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2119
    :cond_2
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected dispatchPdus([[B)V
    .locals 3
    .parameter "pdus"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2072
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2073
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2075
    goto :goto_0
.end method

.method protected dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V
    .locals 12
    .parameter "originatingAddress"
    .parameter "sequenceCount"

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 4111
    const/4 v10, 0x0

    check-cast v10, [[B

    .line 4112
    .local v10, pdus:[[B
    const/4 v6, 0x0

    .line 4114
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 4115
    :cond_0
    const-string v0, "SMS"

    const-string v1, "No originating address and can\'t check pending Sprint reassemble SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    :cond_1
    :goto_0
    return-void

    .line 4119
    :cond_2
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPendingSprintReassembleSms(): originatingAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,sequenceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    const-string v3, "address=? AND count=?"

    .line 4123
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 4128
    .local v4, whereArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "sequence ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4131
    if-nez v6, :cond_3

    .line 4132
    const-string v0, "SMS"

    const-string v1, "Cursor is null and can\'t check pending Sprint reassemble SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4159
    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4136
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 4138
    .local v7, cursorCount:I
    if-nez v7, :cond_4

    .line 4159
    if-eqz v6, :cond_1

    goto :goto_1

    .line 4142
    :cond_4
    const/4 v0, 0x1

    new-array v10, v0, [[B

    .line 4146
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_5

    .line 4147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4149
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v10, v0

    .line 4151
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    .line 4146
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4155
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4159
    if-eqz v6, :cond_1

    goto :goto_1

    .line 4156
    .end local v7           #cursorCount:I
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 4157
    .local v8, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "SMS"

    const-string v1, "Can\'t access multipart SMS database for Sprint reassemble SMS"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4159
    if-eqz v6, :cond_1

    goto :goto_1

    .end local v8           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 2165
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->checkFireWallForSms(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2166
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2167
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2168
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2169
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2170
    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTPMR(Landroid/os/Handler;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCB(Landroid/os/Handler;)V

    .line 615
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 630
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 631
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 640
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateThread:Landroid/os/HandlerThread;

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_4

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dispose()V

    .line 653
    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 656
    :cond_4
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "SMS"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method protected getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 5
    .parameter "sentIntent"

    .prologue
    .line 2458
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2459
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2461
    .local v1, packageNames:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_2

    .line 2463
    :cond_0
    const-string v3, "SMS"

    const-string v4, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    if-eqz p1, :cond_1

    .line 2466
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 2474
    :goto_1
    return-object v3

    .line 2467
    :catch_0
    move-exception v0

    .line 2468
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMS"

    const-string v4, "failed to send error result"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2474
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v1, v3

    goto :goto_1
.end method

.method getCSCB()V
    .locals 2

    .prologue
    .line 3313
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3314
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getATCSCB(Landroid/os/Message;)V

    .line 3315
    return-void
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getMStorageAvailable()Z
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v0

    return v0
.end method

.method public getSMSCenter(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 2752
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2753
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 2754
    return-void
.end method

.method protected getServiceState()I
    .locals 4

    .prologue
    .line 2629
    const/4 v0, 0x1

    .line 2630
    .local v0, ss:I
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2631
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2636
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return v0

    .line 2634
    :cond_0
    const-string v1, "SMS"

    const-string v2, "mPhone or gerServiceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 18
    .parameter "candicatePrefix"
    .parameter "bhascolon"

    .prologue
    .line 3975
    if-nez p1, :cond_0

    .line 3976
    const/4 v13, 0x0

    .line 4075
    :goto_0
    return-object v13

    .line 3979
    :cond_0
    const/4 v10, 0x0

    .line 3980
    .local v10, packageName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3981
    .local v4, app_prefix:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3984
    .local v9, outReceiver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v15, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3985
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 3986
    .local v14, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_2

    .line 3987
    :cond_1
    const-string v15, "SMS"

    const-string v16, "No Receiver for DSMS Intent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    const/4 v13, 0x0

    goto :goto_0

    .line 3997
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .line 4000
    .local v1, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_d

    .line 4001
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 4002
    .local v7, info:Landroid/content/pm/ResolveInfo;
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v15, :cond_4

    .line 4003
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v15, :cond_3

    .line 4004
    const-string v15, "SMS"

    const-string v16, "activity info is null!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4007
    :cond_4
    const-string v15, "SMS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "check ap: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/HtcMessageHelper;->bBuildinSystemAP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/HtcMessageHelper;->bVZWSignedAP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 4012
    const-string v15, "SMS"

    const-string v16, "not SysAP or signed ap"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4017
    :cond_5
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4018
    .local v12, receiverMetadata:Landroid/os/Bundle;
    if-nez v12, :cond_6

    .line 4019
    const-string v15, "SMS"

    const-string v16, "receiver metadata is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_6
    const/4 v3, 0x0

    .line 4023
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 4025
    .local v2, apMetadata:Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x80

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 4029
    :goto_3
    if-nez v3, :cond_b

    .line 4030
    const-string v15, "SMS"

    const-string v16, "appinfo is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_8

    .line 4035
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4038
    :cond_8
    if-nez v2, :cond_9

    if-eqz v12, :cond_3

    :cond_9
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v15}, Lcom/android/internal/telephony/SMSDispatcher;->isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 4046
    const/4 v11, 0x0

    .line 4047
    .local v11, realprefix:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 4048
    const-string v15, "com.verizon.directedAppSMS"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4057
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_3

    .line 4058
    if-eqz p2, :cond_a

    if-eqz p2, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 4061
    :cond_a
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4062
    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4063
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4026
    .end local v11           #realprefix:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4027
    .local v5, e:Ljava/lang/Exception;
    const-string v15, "SMS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getApplication Info exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4031
    .end local v5           #e:Ljava/lang/Exception;
    :cond_b
    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v15, :cond_7

    .line 4032
    const-string v15, "SMS"

    const-string v16, "ap metaData is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4050
    .restart local v11       #realprefix:Ljava/lang/String;
    :cond_c
    const-string v15, "com.verizon.directedAppSMS"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 4069
    .end local v2           #apMetadata:Landroid/os/Bundle;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v11           #realprefix:Ljava/lang/String;
    .end local v12           #receiverMetadata:Landroid/os/Bundle;
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_e

    .line 4070
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v13, v15, [Ljava/lang/String;

    .line 4071
    .local v13, result:[Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0

    .line 4075
    .end local v13           #result:[Ljava/lang/String;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method protected handleCmasInEcmCallbackMode(Z)V
    .locals 0
    .parameter "isECM"

    .prologue
    .line 3377
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 701
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "handleMessage > "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 706
    :sswitch_0
    const-string v3, "SMS"

    const-string v4, "New SMS Message has been stored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 711
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/telephony/SmsMessage;

    .line 713
    .local v29, sms:Landroid/telephony/SmsMessage;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 715
    :try_start_0
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v32, v0

    .line 716
    .local v32, values:[I
    if-eqz v32, :cond_1

    move-object/from16 v0, v32

    array-length v3, v0

    if-lez v3, :cond_1

    .line 717
    const/4 v3, 0x0

    aget v3, v32, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v32           #values:[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNewMessage(Landroid/telephony/SmsMessage;)V

    goto :goto_0

    .line 719
    :catch_0
    move-exception v15

    .line 720
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "SMS"

    const-string v4, "Failed to get indexOnUicc!"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 724
    .end local v15           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Can not write MT SMS to UICC!"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 734
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v29           #sms:Landroid/telephony/SmsMessage;
    :sswitch_1
    const-string v3, "SMS"

    const-string v4, "New SMS Message Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 742
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 743
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception processing incoming SMS. Exception:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 747
    :cond_3
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/telephony/SmsMessage;

    .line 749
    .restart local v29       #sms:Landroid/telephony/SmsMessage;
    :try_start_1
    move-object/from16 v0, v29

    iget-object v3, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v27

    .line 750
    .local v27, result:I
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_0

    .line 753
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_4

    const/16 v18, 0x1

    .line 754
    .local v18, handled:Z
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 756
    .end local v18           #handled:Z
    .end local v27           #result:I
    :catch_1
    move-exception v17

    .line 757
    .local v17, ex:Ljava/lang/RuntimeException;
    const-string v3, "SMS"

    const-string v4, "Exception dispatching message"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 753
    .end local v17           #ex:Ljava/lang/RuntimeException;
    .restart local v27       #result:I
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 765
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #result:I
    .end local v29           #sms:Landroid/telephony/SmsMessage;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 769
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v0, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto/16 :goto_0

    .line 773
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 777
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 801
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 802
    .local v31, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 807
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 805
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_3

    .line 813
    .end local v31           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 814
    .restart local v31       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_6

    .line 816
    :try_start_2
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 821
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 817
    :catch_2
    move-exception v17

    .line 818
    .local v17, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "SMS"

    const-string v4, "failed to send RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 829
    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v31           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_8
    const-string v3, "SMS"

    const-string v4, "1-New Cell broadcast Message Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 838
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 839
    const-string v3, "SMS"

    const-string v4, "Exception processing incoming CB message"

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 844
    :cond_7
    iget-object v13, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/gsm/CBMessage;

    .line 847
    .local v13, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V

    goto/16 :goto_0

    .line 853
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    :sswitch_9
    const-string v3, "SMS"

    const-string v4, "Set Cell broadcast channels complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    :sswitch_a
    const-string v3, "SMS"

    const-string v4, "Get Cell broadcast channels complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetCSCBComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 868
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 870
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 871
    const-string v3, "SMS"

    const-string v4, "Callback with GET SMSC successful."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 874
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 875
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 878
    :cond_8
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 884
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 886
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 887
    const-string v3, "SMS"

    const-string v4, "Callback with GET SUBSIDY LOCK successful."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 890
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 895
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 896
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v9, v3

    check-cast v9, [I

    .line 897
    .local v9, MIPData:[I
    if-nez v9, :cond_9

    .line 898
    const-string v3, "SMS"

    const-string v4, "MIP without parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 902
    :cond_9
    const/4 v3, 0x0

    aget v24, v9, v3

    .line 903
    .local v24, msg_id:I
    const/4 v3, 0x1

    aget v16, v9, v3

    .line 906
    .local v16, errorCode:I
    new-instance v20, Landroid/content/Intent;

    const-string v3, "com.htc.provider.Telephony.RTT_EVDO_ERROR"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v20, intent:Landroid/content/Intent;
    const-string v3, "msg_id"

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v3, "errorCode"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 917
    .end local v9           #MIPData:[I
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v16           #errorCode:I
    .end local v20           #intent:Landroid/content/Intent;
    .end local v24           #msg_id:I
    :sswitch_e
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_0

    .line 919
    :try_start_3
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 920
    :try_start_4
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 921
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 923
    :catch_3
    move-exception v15

    .line 924
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "wait sent exception >"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 934
    .end local v15           #e:Ljava/lang/Exception;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 935
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 936
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v28, v3

    check-cast v28, [I

    .line 937
    .local v28, results:[I
    move-object/from16 v12, v28

    .local v12, arr$:[I
    array-length v0, v12

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget v30, v12, v19

    .line 938
    .local v30, tpmr:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 944
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v12           #arr$:[I
    .end local v19           #i$:I
    .end local v21           #len$:I
    .end local v28           #results:[I
    .end local v30           #tpmr:I
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 945
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleCmasInEcmCallbackMode(Z)V

    goto/16 :goto_0

    .line 949
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 950
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 957
    :sswitch_12
    new-instance v23, Lcom/android/internal/telephony/HtcRoamingGuideDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;-><init>(Landroid/content/Context;)V

    .line 959
    .local v23, mShowRoamGuideDialogView:Lcom/android/internal/telephony/HtcRoamingGuideDialog;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 960
    .local v6, mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_a

    const/4 v7, 0x1

    .line 961
    .local v7, bFirstofAll:Z
    :goto_6
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-lez v3, :cond_b

    const/4 v8, 0x1

    .line 963
    .local v8, bLastofAll:Z
    :goto_7
    if-eqz v23, :cond_d

    .line 964
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    .line 965
    .local v26, r:Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->getListView()Landroid/widget/ListView;

    move-result-object v22

    .line 966
    .local v22, list:Landroid/widget/ListView;
    const v3, 0x40700b6

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->setMsgText(Ljava/lang/String;)V

    .line 968
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x40700b7

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v33, Lcom/android/internal/telephony/SMSDispatcher$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->getLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v5

    .line 1007
    .local v5, mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    if-eqz v22, :cond_c

    .line 1008
    new-instance v10, Lcom/android/internal/telephony/RoamingGuideListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/RoamingGuideListAdapter;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v10, adapter:Lcom/android/internal/telephony/RoamingGuideListAdapter;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1010
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 1011
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1012
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/htc/dialog/HtcAlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1083
    .end local v10           #adapter:Lcom/android/internal/telephony/RoamingGuideListAdapter;
    :goto_8
    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1084
    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 960
    .end local v5           #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .end local v7           #bFirstofAll:Z
    .end local v8           #bLastofAll:Z
    .end local v22           #list:Landroid/widget/ListView;
    .end local v26           #r:Landroid/content/res/Resources;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 961
    .restart local v7       #bFirstofAll:Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1075
    .restart local v5       #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .restart local v8       #bLastofAll:Z
    .restart local v22       #list:Landroid/widget/ListView;
    .restart local v26       #r:Landroid/content/res/Resources;
    :cond_c
    :try_start_6
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1076
    :try_start_7
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1077
    monitor-exit v4

    goto :goto_8

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1078
    :catch_4
    move-exception v3

    goto :goto_8

    .line 1088
    .end local v5           #mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;
    .end local v22           #list:Landroid/widget/ListView;
    .end local v26           #r:Landroid/content/res/Resources;
    :cond_d
    :try_start_9
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1089
    :try_start_a
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1090
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1091
    :catch_5
    move-exception v3

    goto/16 :goto_0

    .line 1099
    .end local v6           #mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v7           #bFirstofAll:Z
    .end local v8           #bLastofAll:Z
    .end local v23           #mShowRoamGuideDialogView:Lcom/android/internal/telephony/HtcRoamingGuideDialog;
    :sswitch_13
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SmsSegmentsController;->addRequestInQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1100
    const/16 v3, 0x1a

    const-wide/16 v33, 0x1f4

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1103
    :sswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkQueueSmsTracker()V

    goto/16 :goto_0

    .line 1109
    :sswitch_15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v26

    .line 1110
    .restart local v26       #r:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x40700b9

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x40700b8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v25

    .line 1116
    .local v25, otapaDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1117
    invoke-virtual/range {v25 .. v25}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 1123
    .end local v25           #otapaDialog:Lcom/htc/dialog/HtcAlertDialog;
    .end local v26           #r:Landroid/content/res/Resources;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1124
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    .line 1125
    iget-object v14, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 1126
    .local v14, code:Ljava/lang/String;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "EVENT_GET_RADIO_TECH_VERIZON : "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_e

    .line 1129
    const-string v3, "01"

    const/16 v4, 0x8

    const/16 v33, 0xa

    move/from16 v0, v33

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 1130
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    .line 1135
    :cond_e
    :goto_9
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sRadioTechImsVerizon change to : "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v33, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1132
    :cond_f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sRadioTechImsVerizon:Z

    goto :goto_9

    .line 1137
    .end local v14           #code:Ljava/lang/String;
    :cond_10
    const-string v3, "SMS"

    const-string v4, "Cannot get radio tech for Verizon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_a
        0x11 -> :sswitch_d
        0x12 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_10
        0x17 -> :sswitch_11
        0x18 -> :sswitch_12
        0x19 -> :sswitch_13
        0x1a -> :sswitch_14
        0x20 -> :sswitch_15
        0x21 -> :sswitch_16
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 2603
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2624
    :goto_0
    return-void

    .line 2607
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppPackage:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2608
    .local v0, appLabel:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2609
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x104041c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 2611
    .local v3, messageText:Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2613
    .local v2, listener:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x104041b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104041d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104041e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2622
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 2623
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 36
    .parameter "ar"

    .prologue
    .line 1249
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1250
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v6, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1252
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x1

    .line 1255
    .local v14, bRemoveWait:Z
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    move/from16 v25, v0

    .line 1256
    .local v25, nConcateRef:I
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    move/from16 v24, v0

    .line 1257
    .local v24, nConcateCount:I
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    move/from16 v27, v0

    .line 1258
    .local v27, nSequence:I
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1259
    .local v23, nConcatDestAddr:Ljava/lang/String;
    iget v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    move/from16 v26, v0

    .line 1265
    .local v26, nDate:I
    const/16 v28, 0x0

    .line 1266
    .local v28, pregeterrorCode:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1267
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/SmsResponse;

    .line 1268
    .local v33, sr:Lcom/android/internal/telephony/SmsResponse;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v28, v0

    .line 1269
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pre error Code: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgRef> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    iget v12, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", trytpmr> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    .end local v33           #sr:Lcom/android/internal/telephony/SmsResponse;
    :cond_0
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send complete: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 1277
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_1

    .line 1283
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v0, v4, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    move/from16 v22, v0

    .line 1284
    .local v22, messageRef:I
    move/from16 v0, v22

    iput v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isPendingMsgRepoEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;

    move-result-object v29

    .line 1289
    .local v29, retUri:Landroid/net/Uri;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add msg ref to pending list: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    .end local v22           #messageRef:I
    .end local v29           #retUri:Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_3

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1297
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1308
    :cond_2
    if-eqz v24, :cond_5

    .line 1309
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1310
    .local v3, msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    :cond_3
    :goto_0
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_4

    if-eqz v14, :cond_4

    .line 1584
    const/16 v4, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1588
    :cond_4
    :goto_1
    return-void

    .line 1315
    :cond_5
    const/16 v31, 0x0

    .line 1316
    .local v31, sendNext:Landroid/content/Intent;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1317
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1318
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    .end local v31           #sendNext:Landroid/content/Intent;
    .local v32, sendNext:Landroid/content/Intent;
    :try_start_1
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v31, v32

    .line 1322
    .end local v32           #sendNext:Landroid/content/Intent;
    .restart local v31       #sendNext:Landroid/content/Intent;
    :cond_6
    if-nez v31, :cond_7

    .line 1323
    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/app/PendingIntent;->send(I)V

    .line 1330
    :goto_2
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 1331
    .local v21, map:Ljava/util/HashMap;
    const-string v4, "destaddr"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1332
    .local v9, str:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1333
    .local v10, time:J
    const-wide/16 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 1335
    .end local v9           #str:Ljava/lang/String;
    .end local v10           #time:J
    .end local v21           #map:Ljava/util/HashMap;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1325
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v6, v4, v5, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1340
    .end local v31           #sendNext:Landroid/content/Intent;
    :cond_8
    const-string v4, "SMS"

    const-string v5, "SMS send failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    .line 1346
    .local v35, tpmr:Ljava/lang/Integer;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    .line 1347
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "assign trytpmr> "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    .end local v35           #tpmr:Ljava/lang/Integer;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v34

    .line 1352
    .local v34, ss:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retry count: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", ss: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/16 v18, 0x0

    .line 1357
    .local v18, extraError:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_b

    .line 1358
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 1359
    .local v16, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_a

    .line 1360
    const/16 v18, 0x100

    .line 1361
    const-string v4, "SMS"

    const-string v5, "Command Error FDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_a
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v16           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isOutOfService(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1374
    const-string v4, "SMS"

    const-string v5, "phone state not in service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move/from16 v0, v34

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1378
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1380
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    goto/16 :goto_0

    .line 1388
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1399
    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1400
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_12

    .line 1402
    const/16 v4, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 1403
    const/4 v14, 0x0

    .line 1407
    const/high16 v8, 0x2

    .line 1408
    .local v8, errorCode:I
    if-eqz v18, :cond_d

    .line 1409
    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x7d0

    or-int/2addr v8, v4

    .line 1422
    :goto_3
    iget-object v0, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 1423
    .restart local v21       #map:Ljava/util/HashMap;
    const-string v4, "destaddr"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1428
    .local v15, dststr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1430
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    .end local v15           #dststr:Ljava/lang/String;
    .end local v21           #map:Ljava/util/HashMap;
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 1414
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v4, v4, 0x7d0

    or-int/2addr v8, v4

    goto :goto_3

    .line 1417
    :cond_e
    const/4 v8, 0x1

    goto :goto_3

    .line 1432
    .restart local v15       #dststr:Ljava/lang/String;
    .restart local v21       #map:Ljava/util/HashMap;
    :cond_f
    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_10

    iget v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsAvailable()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1434
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1436
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1443
    .end local v8           #errorCode:I
    .end local v15           #dststr:Ljava/lang/String;
    .end local v21           #map:Ljava/util/HashMap;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v12, v12, -0x1

    aget v5, v5, v12

    add-int/lit16 v5, v5, 0x3e8

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1446
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "send retry, acquire wake lock "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v13, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    add-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " secs"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    .line 1451
    .local v30, retryMsg:Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->HTC_SEND_RETRY_DELAY:[I

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1454
    const/high16 v8, 0x2

    .line 1455
    .restart local v8       #errorCode:I
    if-eqz v18, :cond_13

    .line 1456
    move/from16 v0, v18

    add-int/lit16 v4, v0, 0x7d0

    or-int/2addr v8, v4

    .line 1472
    :goto_4
    :try_start_3
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send failed error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1478
    .local v20, informationIntent:Landroid/content/Intent;
    if-eqz v24, :cond_15

    .line 1479
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1480
    .restart local v3       #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1495
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    .end local v20           #informationIntent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 1462
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 1463
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v4, v4, 0x7d0

    or-int/2addr v8, v4

    goto :goto_4

    .line 1466
    :cond_14
    const/4 v8, 0x1

    goto :goto_4

    .line 1487
    .restart local v20       #informationIntent:Landroid/content/Intent;
    :cond_15
    const-string v4, "under_retry"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1489
    const-string v4, "retry_count"

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1491
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    .line 1492
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v8, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1500
    .end local v8           #errorCode:I
    .end local v20           #informationIntent:Landroid/content/Intent;
    .end local v30           #retryMsg:Landroid/os/Message;
    :cond_16
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    .line 1502
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1504
    const/16 v17, 0x1

    .line 1506
    .local v17, error:I
    :try_start_4
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1507
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 1513
    .end local v17           #error:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1514
    invoke-static {}, Lcom/android/internal/telephony/SmsSegmentsController;->getInstance()Lcom/android/internal/telephony/SmsSegmentsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsSegmentsController;->checkOutSegment()V

    .line 1531
    :cond_18
    const/4 v8, 0x0

    .line 1532
    .restart local v8       #errorCode:I
    if-eqz v18, :cond_1a

    .line 1533
    move/from16 v0, v18

    add-int/lit16 v8, v0, 0x7d0

    .line 1549
    :goto_5
    :try_start_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_19

    .line 1550
    const/high16 v4, 0x2

    or-int/2addr v8, v4

    .line 1554
    :cond_19
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS send failed error: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    if-eqz v24, :cond_1c

    .line 1560
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    .line 1561
    .restart local v3       #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mConcateHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v5, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1578
    .end local v3           #msgobj:Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 1539
    :cond_1a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1b

    .line 1540
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    add-int/lit16 v8, v4, 0x7d0

    goto :goto_5

    .line 1543
    :cond_1b
    const/4 v8, 0x1

    goto :goto_5

    .line 1566
    :cond_1c
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1567
    .local v19, fillIn:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1568
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1569
    const-string v4, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1572
    :cond_1d
    const-string v4, "under_retry"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1573
    const-string v4, "retry_count"

    iget v5, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1574
    iget-object v4, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v8, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1335
    .end local v8           #errorCode:I
    .end local v18           #extraError:I
    .end local v19           #fillIn:Landroid/content/Intent;
    .end local v34           #ss:I
    .restart local v32       #sendNext:Landroid/content/Intent;
    :catch_4
    move-exception v4

    move-object/from16 v31, v32

    .end local v32           #sendNext:Landroid/content/Intent;
    .restart local v31       #sendNext:Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method public abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected isImproveSmsSending()Z
    .locals 2

    .prologue
    .line 3786
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 2921
    if-nez p1, :cond_0

    .line 2923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2924
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2925
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2926
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2928
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2929
    return-void
.end method

.method protected packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;
    .locals 2
    .parameter "it"
    .parameter "smsb"
    .parameter "pdus"
    .parameter "idxonsims"

    .prologue
    .line 2098
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2099
    .restart local p1
    :cond_0
    const-string v0, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2100
    const-string v0, "pdus"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2101
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    const-string v0, "idxonsims"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2103
    return-object p1
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 40
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 1678
    new-instance v39, Ljava/lang/StringBuilder;

    const-string v5, "reference_number ="

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1679
    .local v39, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1680
    const-string v5, " AND address = ?"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    const-string v5, " AND count = ?"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_0
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 1696
    .local v9, whereArgs:[Ljava/lang/String;
    const/16 v34, 0x0

    check-cast v34, [[B

    .line 1698
    .local v34, pdus:[[B
    const/16 v28, 0x0

    .line 1701
    .local v28, idxonsimarray:[I
    const/16 v18, 0x0

    .line 1703
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1704
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 1707
    .local v19, cursorCount:I
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processMessagePart(): ref_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", seq_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,max_num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const-string v5, "sequence"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 1710
    .local v36, sequenceColumn:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1711
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 1714
    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1715
    .local v21, cursorseq:I
    const/16 v5, 0xff

    move/from16 v0, v21

    if-le v0, v5, :cond_1

    .line 1716
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 1718
    :cond_1
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v0, v21

    if-ne v0, v5, :cond_4

    .line 1722
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/internal/telephony/SmsMessageBase;->isSprintReassembleSms:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1723
    const-string v5, "SMS"

    const-string v6, "We have Sprint reassemble SMS but it has conflict seqNumber, dispatch it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v5, 0x1

    new-array v0, v5, [[B

    move-object/from16 v34, v0

    .line 1725
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    aput-object v6, v34, v5

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    const/4 v5, -0x1

    .line 1825
    if-eqz v18, :cond_2

    .end local v19           #cursorCount:I
    .end local v21           #cursorseq:I
    .end local v27           #i:I
    .end local v36           #sequenceColumn:I
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1910
    :cond_2
    :goto_2
    return v5

    .line 1732
    .restart local v19       #cursorCount:I
    .restart local v21       #cursorseq:I
    .restart local v27       #i:I
    .restart local v36       #sequenceColumn:I
    :cond_3
    :try_start_1
    const-string v5, "SMS"

    const-string v6, "Duplcated SMS is received!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v5, 0x1

    .line 1825
    if-eqz v18, :cond_2

    goto :goto_1

    .line 1710
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1740
    .end local v21           #cursorseq:I
    :cond_5
    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1743
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_9

    .line 1745
    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .line 1746
    .local v38, values:Landroid/content/ContentValues;
    const-string v5, "date"

    new-instance v6, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1747
    const-string v5, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v5, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v5

    if-lez v5, :cond_6

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v5

    shl-int/lit8 v26, v5, 0x10

    .line 1755
    .local v26, highshort:I
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processmessagepart, highshort/oldRef is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int v5, v5, v26

    move-object/from16 v0, p2

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1760
    .end local v26           #highshort:I
    :cond_6
    const-string v5, "reference_number"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1761
    const-string v5, "count"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1762
    const-string v5, "sequence"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1763
    if-eqz p3, :cond_7

    .line 1764
    const-string v5, "destination_port"

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1769
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/internal/telephony/SmsMessageBase;->isSprintReassembleSms:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 1774
    new-instance v23, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v23, dispatchIntent:Landroid/content/Intent;
    const-string v5, "count"

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    const-string v5, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x4000

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    .line 1779
    .local v24, dispatchPendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1780
    .local v16, currentTime:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 1781
    .local v11, alarmManager:Landroid/app/AlarmManager;
    const/4 v5, 0x0

    const-wide/32 v6, 0x493e0

    add-long v6, v6, v16

    move-object/from16 v0, v24

    invoke-virtual {v11, v5, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1782
    const-string v5, "SMS"

    const-string v6, "Will check Sprint reassemble SMS in raw table after 5 min"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    .end local v11           #alarmManager:Landroid/app/AlarmManager;
    .end local v16           #currentTime:J
    .end local v23           #dispatchIntent:Landroid/content/Intent;
    .end local v24           #dispatchPendingIntent:Landroid/app/PendingIntent;
    :cond_8
    const/4 v5, 0x1

    .line 1825
    if-eqz v18, :cond_2

    goto/16 :goto_1

    .line 1790
    .end local v38           #values:Landroid/content/ContentValues;
    :cond_9
    const-string v5, "pdu"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 1795
    .local v33, pduColumn:I
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v0, v5, [[B

    move-object/from16 v34, v0

    .line 1796
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    new-array v0, v5, [I

    move-object/from16 v28, v0

    .line 1797
    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 1798
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 1799
    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v20, v0

    .line 1801
    .local v20, cursorSequence:I
    const/16 v29, -0x1

    .line 1802
    .local v29, indexonsim:I
    const/16 v35, 0x0

    .line 1803
    .local v35, realseq:I
    const/16 v5, 0xff

    move/from16 v0, v20

    if-le v0, v5, :cond_a

    .line 1804
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    .line 1805
    shr-int/lit8 v29, v20, 0x10

    .line 1806
    move/from16 v20, v35

    .line 1809
    :cond_a
    add-int/lit8 v5, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v34, v5

    .line 1811
    add-int/lit8 v5, v20, -0x1

    aput v29, v28, v5

    .line 1797
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 1815
    .end local v20           #cursorSequence:I
    .end local v29           #indexonsim:I
    .end local v35           #realseq:I
    :cond_b
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    aput-object v6, v34, v5

    .line 1816
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v6

    aput v6, v28, v5

    .line 1819
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1825
    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1838
    :cond_c
    if-eqz p3, :cond_10

    .line 1839
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v5, v6, :cond_f

    .line 1841
    new-instance v32, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1842
    .local v32, output:Ljava/io/ByteArrayOutputStream;
    const/16 v27, 0x0

    :goto_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_e

    .line 1843
    aget-object v5, v34, v27

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    .line 1844
    .local v31, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v22

    .line 1845
    .local v22, data:[B
    const/4 v5, 0x0

    move-object/from16 v0, v22

    array-length v6, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1842
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 1820
    .end local v19           #cursorCount:I
    .end local v22           #data:[B
    .end local v27           #i:I
    .end local v31           #msg:Landroid/telephony/SmsMessage;
    .end local v32           #output:Ljava/io/ByteArrayOutputStream;
    .end local v33           #pduColumn:I
    .end local v36           #sequenceColumn:I
    :catch_0
    move-exception v25

    .line 1821
    .local v25, e:Landroid/database/SQLException;
    :try_start_2
    const-string v5, "SMS"

    const-string v6, "Can\'t access multipart SMS database"

    move-object/from16 v0, v25

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1823
    const/4 v5, 0x2

    .line 1825
    if-eqz v18, :cond_2

    goto/16 :goto_1

    .end local v25           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v5

    .line 1848
    .restart local v19       #cursorCount:I
    .restart local v27       #i:I
    .restart local v32       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v33       #pduColumn:I
    .restart local v36       #sequenceColumn:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    .line 1851
    .end local v32           #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1910
    :goto_5
    const/4 v5, -0x1

    goto/16 :goto_2

    .line 1859
    :cond_10
    const/4 v12, 0x0

    .line 1860
    .local v12, bLBS:Z
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_14

    .line 1862
    new-instance v32, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1863
    .restart local v32       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v27, 0x0

    :goto_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_11

    .line 1864
    aget-object v5, v34, v27

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    .line 1865
    .restart local v31       #msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v22

    .line 1866
    .restart local v22       #data:[B
    const/4 v5, 0x0

    move-object/from16 v0, v22

    array-length v6, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1863
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 1868
    .end local v22           #data:[B
    .end local v31           #msg:Landroid/telephony/SmsMessage;
    :cond_11
    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 1869
    .local v13, ba:[B
    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    .line 1871
    .local v37, str:Ljava/lang/String;
    if-eqz v37, :cond_14

    .line 1872
    const-string v5, "SMS"

    const-string v6, "EMS check DirectedSMS V12"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const-string v5, "//VZW"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "//VZW"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_12

    const/4 v14, 0x1

    .line 1875
    .local v14, beVZWstarted:Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->checkVZWDirectedSMSV12(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    .line 1876
    const-string v5, "SMS"

    const-string v6, "Directed SMS v12 true, return handled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1873
    .end local v14           #beVZWstarted:Z
    :cond_12
    const/4 v14, 0x0

    goto :goto_7

    .line 1878
    .restart local v14       #beVZWstarted:Z
    :cond_13
    if-eqz v14, :cond_14

    .line 1879
    const/4 v12, 0x1

    .line 1880
    const-string v5, "SMS"

    const-string v6, "SMSV12dispatch/ isLBSMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    .end local v13           #ba:[B
    .end local v14           #beVZWstarted:Z
    .end local v32           #output:Ljava/io/ByteArrayOutputStream;
    .end local v37           #str:Ljava/lang/String;
    :cond_14
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 1887
    .local v30, it:Landroid/content/Intent;
    const/4 v5, 0x1

    if-ne v12, v5, :cond_15

    .line 1888
    const-string v5, "lbs"

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1889
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object/from16 v3, v34

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->packagePdus(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[I)Landroid/content/Intent;

    .line 1892
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x51

    if-ne v5, v6, :cond_16

    .line 1893
    const/4 v5, 0x0

    aget-object v5, v34, v5

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    .line 1894
    .restart local v31       #msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 1895
    const/4 v5, 0x0

    aget-object v5, v34, v5

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v15

    .line 1897
    .local v15, cdmaMsg:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 1898
    invoke-static {v15}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1899
    const-string v5, "discard"

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1906
    .end local v15           #cdmaMsg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v31           #msg:Landroid/telephony/SmsMessage;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus(Landroid/content/Intent;[[B)V

    goto/16 :goto_5
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 24
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1936
    const/16 v20, 0x0

    check-cast v20, [[B

    .line 1937
    .local v20, pdus:[[B
    const/4 v9, 0x0

    .line 1940
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1941
    .local v21, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 1944
    .local v22, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v21, v7, v8

    const/4 v8, 0x2

    aput-object v22, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1949
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1950
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1953
    .local v18, oldPduString:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v17

    .line 1954
    .local v17, oldPdu:[B
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1955
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :cond_0
    const/4 v3, 0x1

    .line 2016
    if-eqz v9, :cond_1

    .end local v17           #oldPdu:[B
    .end local v18           #oldPduString:Ljava/lang/String;
    .end local v21           #refNumber:Ljava/lang/String;
    .end local v22           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2062
    :cond_1
    :goto_1
    return v3

    .line 1960
    .restart local v21       #refNumber:Ljava/lang/String;
    .restart local v22       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1963
    const-string v6, "address=? AND reference_number=?"

    .line 1964
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v21, v7, v3

    .line 1965
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1967
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1968
    .local v10, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    if-eq v10, v3, :cond_4

    .line 1970
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1971
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1972
    const-string v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v3, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1975
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1976
    const-string v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1977
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1978
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1980
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1981
    const/4 v3, 0x1

    .line 2016
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .line 1985
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_4
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v20, v0

    .line 1986
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v10, :cond_7

    .line 1987
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1988
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1990
    .local v11, cursorSequence:I
    if-nez p9, :cond_5

    .line 1991
    add-int/lit8 v11, v11, -0x1

    .line 1993
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v20, v11

    .line 1998
    if-nez v11, :cond_6

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1999
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1986
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2004
    .end local v11           #cursorSequence:I
    :cond_7
    if-eqz p9, :cond_9

    .line 2005
    aput-object p1, v20, p4

    .line 2011
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2016
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2020
    :cond_8
    if-eqz p9, :cond_d

    .line 2022
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2023
    .local v19, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p5

    if-ge v15, v0, :cond_b

    .line 2025
    aget-object v3, v20, v15

    const/4 v4, 0x0

    aget-object v5, v20, v15

    array-length v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2023
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2007
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_9
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v20, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 2012
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursorCount:I
    .end local v15           #i:I
    .end local v21           #refNumber:Ljava/lang/String;
    .end local v22           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 2013
    .local v14, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMS"

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2014
    const/4 v3, 0x2

    .line 2016
    if-eqz v9, :cond_1

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 2027
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v10       #cursorCount:I
    .restart local v15       #i:I
    .restart local v19       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #refNumber:Ljava/lang/String;
    .restart local v22       #seqNumber:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 2030
    .local v13, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_c

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, p2

    invoke-virtual {v3, v13, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 2034
    :cond_c
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v20, v0

    .line 2035
    const/4 v3, 0x0

    aput-object v13, v20, v3

    .line 2037
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 2038
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 2043
    .end local v13           #datagram:[B
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_10

    .line 2044
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_f

    .line 2046
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2047
    .restart local v19       #output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, p5

    if-ge v15, v0, :cond_e

    .line 2048
    aget-object v3, v20, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 2049
    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v12

    .line 2050
    .local v12, data:[B
    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2047
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2053
    .end local v12           #data:[B
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 2056
    .end local v19           #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 2062
    :goto_6
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 2060
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_6
.end method

.method public requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "DmString"
    .parameter "response"

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3715
    return-void
.end method

.method protected resetLastSmsFingerprint()V
    .locals 0

    .prologue
    .line 3131
    return-void
.end method

.method public abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public abstract sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 2364
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 2365
    return-void
.end method

.method protected sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 2481
    const-string v2, "SMS"

    const-string v3, "sendRawPduWithBundle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v2, :cond_2

    .line 2483
    if-eqz p3, :cond_0

    .line 2485
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2488
    :cond_0
    :goto_0
    const-string v2, "SMS"

    const-string v3, "Device does not support sending sms."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_1
    :goto_1
    return-void

    .line 2492
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2493
    invoke-virtual/range {p0 .. p8}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPduWithBundle2([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 2497
    :cond_3
    if-nez p2, :cond_4

    .line 2498
    if-eqz p3, :cond_1

    .line 2500
    :try_start_1
    const-string v2, "SMS"

    const-string v3, "sendRawPduWithBundle, send fail due to NULL pdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2502
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2507
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2508
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "smsc"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    const-string v2, "pdu"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    const-string v2, "destaddr"

    invoke-virtual {v1, v2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v4

    .line 2513
    .local v4, appPackage:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2517
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static {p8}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    .local v0, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2522
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2527
    :cond_5
    iput-boolean p5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2528
    iput-boolean p6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2531
    if-eqz p7, :cond_6

    .line 2532
    const-string v2, "REFERENCE_NUMBER"

    const/4 v3, 0x0

    invoke-virtual {p7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    .line 2533
    const-string v2, "COUNT"

    const/4 v3, 0x0

    invoke-virtual {p7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    .line 2534
    const-string v2, "SEQUENCE"

    const/4 v3, 0x0

    invoke-virtual {p7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    .line 2535
    const-string v2, "DESTADDR"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    .line 2536
    const-string v2, "DATE"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    .line 2540
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2541
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2542
    const-string v2, "DEST_ADDRESS"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 2543
    const-string v2, "3GPP2_RAW_PDU"

    invoke-virtual {p7, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 2549
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v6

    .line 2550
    .local v6, ss:I
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2551
    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2554
    :cond_7
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 2555
    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2486
    .end local v0           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #appPackage:Ljava/lang/String;
    .end local v6           #ss:I
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method protected sendRawPduWithBundle2([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 13
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 2389
    if-nez p2, :cond_1

    .line 2390
    if-eqz p3, :cond_0

    .line 2392
    :try_start_0
    const-string v4, "SMS"

    const-string v5, "sendRawPduWithBundle2, send fail due to NULL pdu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    :cond_0
    :goto_0
    return-void

    .line 2399
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2400
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "smsc"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    const-string v4, "pdu"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    const-string v4, "destaddr"

    move-object/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    .line 2405
    .local v6, appPackage:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2407
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move/from16 v0, p5

    iput-boolean v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2410
    move/from16 v0, p6

    iput-boolean v0, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2412
    if-eqz p7, :cond_2

    .line 2413
    const-string v4, "REFERENCE_NUMBER"

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    .line 2414
    const-string v4, "COUNT"

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    .line 2415
    const-string v4, "SEQUENCE"

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    .line 2416
    const-string v4, "DESTADDR"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    .line 2417
    const-string v4, "DATE"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    .line 2420
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2421
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2422
    const-string v4, "DEST_ADDRESS"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 2423
    const-string v4, "3GPP2_RAW_PDU"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 2428
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 2430
    .local v12, ss:I
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2431
    iget-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v12, v4}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2433
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v8

    .line 2434
    .local v8, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2437
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedShowRoamingGuard()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2438
    if-eqz p5, :cond_4

    const/4 v10, 0x1

    .line 2439
    .local v10, org1:I
    :goto_1
    if-eqz p6, :cond_5

    const/4 v11, 0x1

    .line 2440
    .local v11, org2:I
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v10, v11, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2444
    .local v9, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuideHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2438
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #org1:I
    .end local v11           #org2:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 2439
    .restart local v10       #org1:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 2448
    .end local v10           #org1:I
    :cond_6
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto/16 :goto_0

    .line 2450
    :cond_7
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2394
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #appPackage:Ljava/lang/String;
    .end local v8           #appName:Ljava/lang/String;
    .end local v12           #ss:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
.end method

.method public abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
.end method

.method setCBEntry(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3295
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3297
    .local v0, reply:Landroid/os/Message;
    return-void
.end method

.method setCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 3306
    const-string v1, "SMS"

    const-string v2, "setCSCB()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3309
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3310
    return-void
.end method

.method public setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "smscAddress"
    .parameter "onComplete"

    .prologue
    .line 2760
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2761
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2763
    return-void
.end method

.method protected showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V
    .locals 6
    .parameter "smstracker"
    .parameter "error"
    .parameter "dstaddr"

    .prologue
    .line 2781
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.hfm.speakSentFail"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "address"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2783
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2786
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2787
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x40700ba

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104041d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$5;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104041e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$4;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2846
    .local v1, d:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2847
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2849
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    return-void
.end method

.method public updateRadiotechForVerizon()V
    .locals 2

    .prologue
    .line 3813
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3814
    .local v0, response:Landroid/os/Message;
    const-string v1, "C8EC000D"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3815
    return-void
.end method
