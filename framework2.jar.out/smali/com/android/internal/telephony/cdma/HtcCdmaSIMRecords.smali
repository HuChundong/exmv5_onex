.class public final Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcCdmaSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_CB_ON_SIM:I = 0x21

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CB_DONE:I = 0x22

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_GSM_IMSI_DONE:I = 0x6f

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x26

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0x71

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x70

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SIM_SWAP_STATUS:I = 0x72

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final EVENT_UPDATE_MCC_THREAD:I = 0x6e

.field static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSIMRecords"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field callForwardingEnabled:Z

.field cfuQueried:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private gsmImsi:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mPendingIccLoaded:Z

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 120
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 121
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 122
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 125
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 126
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 137
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 2809
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 251
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 253
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 254
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 256
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 259
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x70

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x71

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    const-string v0, "gsm.sim.types"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 279
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private appendFileId(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 2555
    move v1, p1

    .line 2557
    .local v1, newEfid:I
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    .line 2558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2559
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2567
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v1
.end method

.method private dropSimPbkEntries()V
    .locals 6

    .prologue
    .line 2782
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 2784
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 2785
    const-string v3, "dropSimPbkEntries"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2786
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2789
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntriesExt(I)V

    .line 2792
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2793
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "phone_type"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2795
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2807
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return-void

    .line 2797
    .restart local v2       #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 2798
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2801
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2803
    :catch_1
    move-exception v0

    .line 2804
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    .line 2182
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2184
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 2187
    return-void
.end method

.method private fetchSimRecords()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2358
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2361
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 2364
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCdmaSIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2367
    const-string v1, "SimRecords"

    const-string v2, "mSimulator = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 2372
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2373
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2375
    const/16 v1, 0x6f07

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2376
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2379
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2380
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2383
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2385
    :cond_1
    const/16 v1, 0x6f31

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2386
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2392
    :cond_2
    const/16 v1, 0x6f7b

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2393
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2413
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 2414
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2415
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2417
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2418
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2420
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2421
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2424
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2425
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2432
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2435
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2439
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2440
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2441
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2442
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2445
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2447
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2448
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2450
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2451
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2453
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2454
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2456
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2457
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2460
    const/16 v1, 0x6f15

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2461
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2472
    const/16 v1, 0x6f45

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2473
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2496
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2748
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2595
    if-eqz p1, :cond_0

    .line 2596
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2599
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcCdmaSIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2668
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2670
    :goto_0
    return-void

    .line 2601
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2603
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2605
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2607
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2610
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2611
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2612
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 2613
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2620
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2622
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2624
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2626
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2630
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    goto :goto_0

    .line 2634
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 2635
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2636
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2643
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2645
    .end local v0           #data:[B
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2647
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2649
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2653
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2654
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2655
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2665
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2662
    :cond_3
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCB([B)V
    .locals 9
    .parameter "ba"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2081
    aget-byte v4, p1, v7

    if-eqz v4, :cond_0

    .line 2082
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_0
    aget-byte v4, p1, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 2087
    array-length v1, p1

    .line 2091
    .local v1, n:I
    add-int/lit8 v4, v1, -0x1

    new-array v2, v4, [B

    .line 2092
    .local v2, nba:[B
    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2094
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 2096
    .local v3, pdu:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;

    move-result-object v0

    .line 2099
    .local v0, message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    .end local v0           #message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    .end local v1           #n:I
    .end local v2           #nba:[B
    .end local v3           #pdu:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1953
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update file efid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    sparse-switch p1, :sswitch_data_0

    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1982
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1985
    :goto_0
    return-void

    .line 1956
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1957
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1961
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1962
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1968
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 1969
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 1973
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1954
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_3
        0x6f40 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 5

    .prologue
    .line 2146
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2148
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "sim_imsi_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    .local v0, lastIMSI:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2151
    .local v2, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sim_imsi_key"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2152
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2154
    const-string v3, "mwi_status_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2156
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2159
    :cond_0
    const-string v3, "ruim.sim.change"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2177
    return-void

    .line 2161
    :cond_1
    const-string v3, "gsm.sim.change"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2166
    :cond_2
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2169
    :cond_3
    const-string v3, "ruim.sim.change"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2171
    :cond_4
    const-string v3, "gsm.sim.change"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 3
    .parameter "refreshResponse"

    .prologue
    .line 1988
    if-nez p1, :cond_0

    .line 1989
    const-string v0, "handleSimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2031
    :goto_0
    return-void

    .line 1999
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 2028
    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :pswitch_0
    const-string v0, "handleSimRefresh with REFRESH_RESULT_FILE_UPDATE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2002
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2008
    :pswitch_1
    const-string v0, "handleSimRefresh with REFRESH_RESULT_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2011
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 2012
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 2015
    :pswitch_2
    const-string v0, "handleSimRefresh with REFRESH_RESULT_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1999
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms(I[B)V
    .locals 7
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 2034
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 2035
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2040
    array-length v1, p2

    .line 2044
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2045
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p2, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2046
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 2050
    .local v0, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setIndexOnIcc(I)V

    .line 2053
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2055
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2111
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2112
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2114
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2115
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2121
    array-length v4, v0

    .line 2125
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2126
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2127
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v3

    .line 2129
    .local v3, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2134
    aput-byte v10, v0, v9

    .line 2111
    .end local v3           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2142
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private htcOnAllRecordsLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2731
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2732
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 2737
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2536
    if-nez p1, :cond_1

    .line 2549
    :cond_0
    :goto_0
    return v2

    .line 2538
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2539
    goto :goto_0

    .line 2542
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2543
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2544
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2545
    goto :goto_0
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2712
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 2713
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 2715
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2716
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2718
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2721
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2715
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2724
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 2679
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 2681
    .local v3, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    const/4 v2, 0x0

    .line 2684
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2685
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 2686
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    .line 2691
    :cond_0
    if-nez v2, :cond_3

    .line 2707
    :cond_1
    return-void

    .line 2684
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_0

    .line 2695
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2697
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 2699
    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2702
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 2703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2704
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 3
    .parameter "mcc"

    .prologue
    .line 809
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2313
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 791
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 793
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 797
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 799
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 802
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 2
    .parameter "spn"

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2328
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "voiceMailNum is empty!! try to search default value from xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2332
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2336
    :cond_0
    return-void
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 2190
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2192
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2193
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2195
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 296
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 297
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 298
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 299
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 2512
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2515
    :cond_0
    const/4 v0, 0x2

    .line 2529
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 2516
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2517
    const/4 v0, 0x1

    .line 2518
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2520
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2523
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 2524
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 2526
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2826
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-nez v1, :cond_1

    .line 767
    :cond_0
    const/4 v1, 0x0

    .line 783
    :goto_0
    return-object v1

    .line 770
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v1, :cond_2

    .line 773
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 783
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 2763
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2764
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 2766
    return-void
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 580
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 582
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 583
    const-string v3, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 584
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 587
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 580
    goto :goto_0

    .line 587
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, aplhaTag:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 493
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .parameter "msg"

    .prologue
    .line 820
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 821
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " HtcCdmaSIMRecords drop event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    const/16 v29, 0x0

    .line 831
    .local v29, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v41

    .line 832
    .local v41, phone:Lcom/android/internal/telephony/PhoneBase;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 1946
    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v29, :cond_0

    .line 1947
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 834
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1941
    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    :catch_0
    move-exception v21

    .line 1943
    .local v21, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Exception parsing SIM record"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1946
    if-eqz v29, :cond_0

    goto :goto_2

    .line 838
    .end local v21           #exc:Ljava/lang/RuntimeException;
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1946
    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    :catchall_0
    move-exception v3

    if-eqz v29, :cond_3

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    .line 1946
    :cond_3
    throw v3

    .line 845
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :pswitch_3
    const/16 v29, 0x1

    .line 847
    :try_start_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 849
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 853
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    if-eqz v3, :cond_4

    .line 856
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/16 v23, 0x0

    .local v23, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    array-length v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_4

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    aget-byte v3, v3, v23

    and-int/lit16 v0, v3, 0xff

    move/from16 v43, v0

    .line 860
    .local v43, serviceGroupCode:I
    const/16 v3, 0xc0

    move/from16 v0, v43

    if-ne v0, v3, :cond_7

    .line 861
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: mEfCsp[i+1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v7, v23, 0x1

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v5, v23, 0x1

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 887
    .end local v23           #i:I
    .end local v43           #serviceGroupCode:I
    :cond_4
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: mNetworkSelectionEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v38

    .line 893
    .local v38, networkSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    if-nez v3, :cond_2

    .line 894
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v45

    .line 896
    .local v45, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v45 .. v45}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 897
    .local v20, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    const-string v5, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 899
    const-string v3, "network_selection_act_key"

    const-string v5, "-1"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_5

    .line 904
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "failed to commit network selection preference"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 874
    .end local v20           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v38           #networkSelection:Ljava/lang/String;
    .end local v45           #sp:Landroid/content/SharedPreferences;
    .restart local v23       #i:I
    .restart local v43       #serviceGroupCode:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 858
    :cond_7
    add-int/lit8 v23, v23, 0x2

    goto/16 :goto_3

    .line 917
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v23           #i:I
    .end local v43           #serviceGroupCode:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 918
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 919
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "automatic network selection: failed!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 921
    :cond_8
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "automatic network selection: succeeded!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 927
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const/16 v29, 0x1

    .line 929
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 931
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 932
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 936
    :cond_9
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0xf

    if-le v3, v5, :cond_b

    .line 941
    :cond_a
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 945
    :cond_b
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v3, :cond_c

    .line 952
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 953
    .local v35, mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 960
    .end local v35           #mcc:I
    :cond_c
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    .line 968
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 975
    .restart local v35       #mcc:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimChanged()V

    goto/16 :goto_1

    .line 954
    .end local v35           #mcc:I
    :catch_1
    move-exception v19

    .line 955
    .local v19, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 956
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 981
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :pswitch_6
    const/16 v29, 0x1

    .line 982
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 983
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 985
    .local v15, data:[B
    const/16 v31, 0x0

    .line 986
    .local v31, isValidMbdn:Z
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_e

    .line 988
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 998
    const/16 v31, 0x1

    .line 1009
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1012
    if-eqz v31, :cond_10

    .line 1015
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-lez v3, :cond_f

    .line 1017
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1022
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 1023
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    const/4 v7, 0x1

    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1029
    :cond_10
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1037
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v31           #isValidMbdn:Z
    :pswitch_7
    const/16 v29, 0x1

    .line 1039
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1041
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 1043
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_11

    const-string v3, "[MAILBOX]"

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 1053
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 1056
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1057
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1043
    :cond_11
    const-string v3, "[MBDN]"

    goto :goto_6

    .line 1064
    :cond_12
    iget-object v4, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 1066
    .local v4, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v3, v7, :cond_13

    const-string v3, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_14

    .line 1073
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1074
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1079
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1080
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1066
    :cond_13
    const-string v3, " EF[MBDN]"

    goto :goto_7

    .line 1087
    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1088
    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1092
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const/16 v29, 0x1

    .line 1094
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1096
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 1097
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1102
    :cond_15
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a

    .line 1104
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1106
    .local v42, results:[Ljava/lang/String;
    if-eqz v42, :cond_19

    move-object/from16 v0, v42

    array-length v3, v0

    const/4 v5, 0x5

    if-lt v3, v5, :cond_19

    .line 1108
    const/4 v3, 0x0

    aget-object v3, v42, v3

    if-eqz v3, :cond_16

    .line 1110
    const/4 v3, 0x0

    aget-object v3, v42, v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v37

    .line 1111
    .local v37, name:[B
    const/4 v3, 0x0

    move-object/from16 v0, v37

    array-length v5, v0

    move-object/from16 v0, v37

    invoke-static {v0, v3, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1114
    .end local v37           #name:[B
    :cond_16
    const/4 v3, 0x1

    aget-object v3, v42, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 1117
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msisdnTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 1120
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msisdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    .end local v42           #results:[Ljava/lang/String;
    :cond_18
    :goto_8
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSISDN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1124
    .restart local v42       #results:[Ljava/lang/String;
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1125
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    goto :goto_8

    .line 1130
    .end local v42           #results:[Ljava/lang/String;
    :cond_1a
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1145
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const/16 v29, 0x0

    .line 1146
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1148
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_1b

    .line 1149
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1151
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    :cond_1b
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1158
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 1159
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    goto/16 :goto_1

    .line 1166
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const/16 v29, 0x1

    .line 1168
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1169
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1171
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1175
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 1180
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_1c

    .line 1181
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Uninitialized record MWIS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1186
    :cond_1c
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    const/16 v52, 0x1

    .line 1187
    .local v52, voiceMailWaiting:Z
    :goto_9
    const/4 v3, 0x1

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 1196
    if-eqz v52, :cond_2

    .line 1197
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1198
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    const/16 v5, 0xff

    if-ne v3, v5, :cond_2

    .line 1199
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1186
    .end local v52           #voiceMailWaiting:Z
    :cond_1d
    const/16 v52, 0x0

    goto :goto_9

    .line 1202
    .restart local v52       #voiceMailWaiting:Z
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_2

    .line 1203
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1212
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v52           #voiceMailWaiting:Z
    :pswitch_b
    const/16 v29, 0x1

    .line 1214
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1215
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1217
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1f

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 1228
    :cond_1f
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 1233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v3, :cond_2

    .line 1234
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v26, v3, 0xf

    .line 1237
    .local v26, indicator:I
    const/16 v3, 0xa

    move/from16 v0, v26

    if-ne v0, v3, :cond_20

    .line 1239
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1240
    :cond_20
    const/4 v3, 0x5

    move/from16 v0, v26

    if-ne v0, v3, :cond_2

    .line 1241
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1249
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v26           #indicator:I
    :pswitch_c
    const/16 v29, 0x1

    .line 1251
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1252
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1254
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1258
    const/4 v3, 0x0

    array-length v5, v15

    invoke-static {v15, v3, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 1260
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1266
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_d
    const/16 v29, 0x1

    .line 1268
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1269
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1271
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_21

    .line 1272
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "query UIM ID fail!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1276
    :cond_21
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 1277
    .local v17, dst:[B
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v15, v6

    move-object/from16 v0, v17

    invoke-static {v15, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1279
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 1281
    .local v18, dsttemp:[B
    const/4 v3, 0x0

    aget-byte v53, v15, v3

    .local v53, xx:I
    const/16 v54, 0x0

    .local v54, yy:I
    :goto_a
    if-lez v53, :cond_22

    .line 1282
    add-int/lit8 v3, v53, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v54

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1281
    add-int/lit8 v53, v53, -0x1

    add-int/lit8 v54, v54, 0x1

    goto :goto_a

    .line 1284
    :cond_22
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v50

    .line 1285
    .local v50, uimId:Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v50

    .line 1286
    const-string v3, "gsm.cdma.uim.id"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1291
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v17           #dst:[B
    .end local v18           #dsttemp:[B
    .end local v50           #uimId:Ljava/lang/String;
    .end local v53           #xx:I
    .end local v54           #yy:I
    :pswitch_e
    const/16 v29, 0x1

    .line 1292
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1293
    .restart local v11       #ar:Landroid/os/AsyncResult;
    if-eqz v11, :cond_23

    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1295
    :cond_23
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1298
    :cond_24
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v28, v0

    .line 1299
    .local v28, ints:[I
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v28, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,simtype= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v28, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, v28

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_25

    .line 1302
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simtype= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v28, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "gsm.htc.sim.types.group"

    const/4 v6, 0x0

    aget v6, v28, v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1304
    :cond_25
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "get ruturning value 2 from WSD"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    .line 1313
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #ints:[I
    :pswitch_f
    const/16 v29, 0x1

    .line 1315
    :try_start_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1316
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1318
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_28

    .line 1346
    :try_start_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_27

    .line 1347
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v3, :cond_5e

    .line 1349
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1351
    .restart local v35       #mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1363
    .end local v35           #mcc:I
    :cond_27
    :goto_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1322
    :cond_28
    :try_start_b
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    array-length v3, v15

    const/4 v5, 0x3

    if-ge v3, v5, :cond_2b

    .line 1326
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt AD data on SIM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1346
    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2a

    .line 1347
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v3, :cond_5f

    .line 1349
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1351
    .restart local v35       #mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1363
    .end local v35           #mcc:I
    :cond_2a
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1332
    :cond_2b
    :try_start_f
    check-cast v41, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 1335
    array-length v3, v15

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2f

    .line 1336
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1346
    :try_start_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2d

    .line 1347
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v3, :cond_60

    .line 1349
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1351
    .restart local v35       #mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1363
    .end local v35           #mcc:I
    :cond_2d
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1332
    :cond_2e
    const/4 v3, 0x0

    goto :goto_e

    .line 1340
    :cond_2f
    const/4 v3, 0x3

    :try_start_13
    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0xf

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/16 v5, 0xf

    if-ne v3, v5, :cond_30

    .line 1343
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1346
    :cond_30
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_32

    .line 1347
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v3, :cond_61

    .line 1349
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1351
    .restart local v35       #mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1363
    .end local v35           #mcc:I
    :cond_32
    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1346
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_34

    .line 1347
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v5, :cond_5d

    .line 1349
    :try_start_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 1351
    .restart local v35       #mcc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1363
    .end local v35           #mcc:I
    :cond_34
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v5, :cond_35

    .line 1346
    :cond_35
    throw v3

    .line 1372
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :pswitch_10
    const/16 v29, 0x1

    .line 1373
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1374
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1378
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_11
    const/16 v29, 0x1

    .line 1380
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1381
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1383
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1387
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-nez v3, :cond_2

    .line 1392
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0xf

    const/16 v5, 0xa

    if-ne v3, v5, :cond_36

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1395
    check-cast v41, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1392
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_36
    const/4 v3, 0x0

    goto :goto_12

    .line 1400
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_12
    const/16 v29, 0x1

    .line 1402
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1403
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1405
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1409
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1414
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_13
    const/16 v29, 0x1

    .line 1416
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1417
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1419
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1422
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 1427
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1428
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1429
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords update failed"

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1434
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    const/16 v29, 0x1

    .line 1436
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1437
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1439
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1443
    new-instance v49, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v3, 0x0

    array-length v5, v15

    move-object/from16 v0, v49

    invoke-direct {v0, v15, v3, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 1445
    .local v49, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :goto_13
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v3

    const/16 v5, 0x43

    if-ne v3, v5, :cond_37

    .line 1447
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1445
    :cond_37
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_13

    .line 1456
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v49           #tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :pswitch_16
    const/16 v29, 0x1

    .line 1458
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1459
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1462
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1466
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_17
    const-string v3, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1471
    :pswitch_18
    const/16 v29, 0x0

    .line 1473
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1475
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v25, v0

    .line 1477
    .local v25, index:[I
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_38

    move-object/from16 v0, v25

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_39

    .line 1478
    :cond_38
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1483
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget v6, v25, v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1486
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v25, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1493
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #index:[I
    :pswitch_19
    const/16 v29, 0x0

    .line 1494
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1495
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3b

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1500
    :cond_3a
    const/4 v5, -0x1

    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1503
    :cond_3b
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1509
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1a
    const/16 v29, 0x1

    .line 1511
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1512
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1514
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3c

    .line 1515
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1519
    :cond_3c
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v14, channelslList:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v48, v0

    .line 1525
    .local v48, temp:[B
    if-eqz v15, :cond_2

    .line 1526
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_14
    array-length v3, v15

    move/from16 v0, v23

    if-ge v0, v3, :cond_40

    .line 1528
    aget-byte v3, v15, v23

    const/4 v5, -0x1

    if-eq v3, v5, :cond_40

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_40

    .line 1530
    const/4 v3, 0x0

    aget-byte v5, v15, v23

    aput-byte v5, v48, v3

    .line 1531
    const/4 v3, 0x1

    add-int/lit8 v5, v23, 0x1

    aget-byte v5, v15, v5

    aput-byte v5, v48, v3

    .line 1532
    const/4 v3, 0x0

    aget-byte v3, v48, v3

    shl-int/lit8 v3, v3, 0x8

    if-gez v3, :cond_3e

    .line 1533
    const/4 v3, 0x0

    aget-byte v3, v48, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit16 v10, v3, 0x100

    .line 1536
    .local v10, a:I
    :goto_15
    const/4 v3, 0x1

    aget-byte v3, v48, v3

    if-gez v3, :cond_3f

    .line 1537
    const/4 v3, 0x1

    aget-byte v3, v48, v3

    add-int/lit16 v12, v3, 0x100

    .line 1540
    .local v12, b:I
    :goto_16
    add-int v24, v10, v12

    .line 1541
    .local v24, id:I
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v23

    if-eq v0, v3, :cond_3d

    add-int/lit8 v3, v23, 0x2

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3d

    add-int/lit8 v3, v23, 0x3

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3d

    .line 1543
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_3d
    add-int/lit8 v23, v23, 0x2

    goto :goto_14

    .line 1535
    .end local v10           #a:I
    .end local v12           #b:I
    .end local v24           #id:I
    :cond_3e
    const/4 v3, 0x0

    aget-byte v3, v48, v3

    shl-int/lit8 v10, v3, 0x8

    .restart local v10       #a:I
    goto :goto_15

    .line 1539
    :cond_3f
    const/4 v3, 0x1

    aget-byte v12, v48, v3

    .restart local v12       #b:I
    goto :goto_16

    .line 1547
    .end local v10           #a:I
    .end local v12           #b:I
    :cond_40
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1551
    .local v36, mid:Ljava/lang/String;
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CBMI length (string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1571
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #channelslList:Ljava/lang/StringBuilder;
    .end local v15           #data:[B
    .end local v23           #i:I
    .end local v36           #mid:Ljava/lang/String;
    .end local v48           #temp:[B
    :pswitch_1b
    const-string v3, "*********Set EF CDMI done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const/16 v29, 0x0

    .line 1573
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1575
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1576
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1578
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1585
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1c
    const-string v3, "*********Set EF LP done"

    const-string v5, "completed!! "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/16 v29, 0x0

    .line 1587
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1589
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1590
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1592
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1596
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_1d
    const/16 v29, 0x1

    .line 1598
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1599
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1601
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    .line 1602
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcCdmaSIMRecords] Error on EF_LP with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1606
    :cond_41
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    .line 1607
    .local v34, mLpList:Ljava/lang/StringBuilder;
    const/16 v33, 0x0

    .line 1609
    .local v33, lp:Ljava/lang/String;
    if-eqz v15, :cond_45

    .line 1612
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_17
    array-length v3, v15

    move/from16 v0, v23

    if-ge v0, v3, :cond_44

    .line 1614
    aget-byte v3, v15, v23

    const/4 v5, -0x1

    if-eq v3, v5, :cond_44

    .line 1616
    aget-byte v3, v15, v23

    if-gez v3, :cond_43

    .line 1617
    aget-byte v3, v15, v23

    add-int/lit16 v0, v3, 0x100

    move/from16 v51, v0

    .line 1620
    .local v51, value:I
    :goto_18
    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_42

    add-int/lit8 v3, v23, 0x1

    aget-byte v3, v15, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_42

    .line 1622
    const-string v3, ","

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_42
    add-int/lit8 v23, v23, 0x1

    goto :goto_17

    .line 1619
    .end local v51           #value:I
    :cond_43
    aget-byte v51, v15, v23

    .restart local v51       #value:I
    goto :goto_18

    .line 1626
    .end local v51           #value:I
    :cond_44
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1628
    .end local v23           #i:I
    :cond_45
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_LP(string): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x39

    if-eq v3, v5, :cond_46

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 1636
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v45

    .line 1638
    .restart local v45       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v45 .. v45}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    .line 1639
    .local v46, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v33, :cond_48

    .line 1641
    const-string v3, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    .line 1642
    .local v39, num:I
    const/4 v3, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1643
    .local v32, langnum:I
    const/16 v3, 0xf

    move/from16 v0, v32

    if-le v0, v3, :cond_47

    .line 1644
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1649
    .end local v32           #langnum:I
    .end local v39           #num:I
    :goto_19
    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1646
    .restart local v32       #langnum:I
    .restart local v39       #num:I
    :cond_47
    const-string v3, "lang_list"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1648
    .end local v32           #langnum:I
    .end local v39           #num:I
    :cond_48
    const-string v3, "lang_list"

    const-string v5, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1654
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    .end local v33           #lp:Ljava/lang/String;
    .end local v34           #mLpList:Ljava/lang/StringBuilder;
    .end local v45           #sp:Landroid/content/SharedPreferences;
    .end local v46           #spEditor:Landroid/content/SharedPreferences$Editor;
    :pswitch_1e
    const/16 v29, 0x1

    .line 1656
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1657
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1659
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1667
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_1f
    const/16 v29, 0x1

    .line 1669
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1671
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1675
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 1677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1681
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_20
    const/16 v29, 0x0

    .line 1682
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1684
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_49

    .line 1685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1689
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1690
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .restart local v4       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/os/Message;

    .line 1700
    .local v40, onCphsCompleted:Landroid/os/Message;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4a

    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    .line 1701
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1703
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1705
    const-string v3, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1707
    const/16 v40, 0x0

    .line 1710
    :cond_4a
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1715
    .end local v4           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v40           #onCphsCompleted:Landroid/os/Message;
    :cond_4b
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1716
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1718
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1723
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_21
    const/16 v29, 0x0

    .line 1724
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1725
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4c

    .line 1726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1732
    :goto_1a
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1733
    const-string v3, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1734
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1736
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1729
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1740
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_22
    const/16 v29, 0x0

    .line 1741
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1742
    .restart local v11       #ar:Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1743
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1744
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccRefreshResponse;

    check-cast v3, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1748
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_23
    const/16 v29, 0x1

    .line 1750
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1751
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1753
    .restart local v15       #data:[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1757
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 1763
    const/4 v3, 0x1

    aget-byte v3, v15, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4d

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1765
    check-cast v41, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1763
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_4d
    const/4 v3, 0x0

    goto :goto_1b

    .line 1769
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_24
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "EVENT_PBK_READY"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v5, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "(EVENT_PBK_READY) Broadcast  INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1795
    :pswitch_25
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1797
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1798
    const-string v3, "Callback with GET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1799
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1801
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4e

    .line 1802
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1805
    :cond_4e
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1809
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1811
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1812
    const-string v3, "Callback with SET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1813
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1815
    iget-object v3, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1819
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_27
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1820
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 1822
    .local v44, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4f

    if-eqz v44, :cond_4f

    .line 1824
    const-string v3, "gsm.sim.types"

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1828
    :cond_4f
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimTypes error - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1836
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v44           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :pswitch_28
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "Delay CFU Query..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1842
    :pswitch_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1

    .line 1847
    :pswitch_2a
    const/16 v29, 0x1

    .line 1848
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1849
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 1850
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI(G), Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1853
    :cond_50
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v15, v0

    .line 1854
    .restart local v15       #data:[B
    if-eqz v15, :cond_59

    array-length v3, v15

    const/4 v5, 0x1

    if-le v3, v5, :cond_59

    .line 1866
    const/4 v3, 0x0

    aget-byte v3, v15, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    .line 1867
    .local v16, dataLen:I
    if-lez v16, :cond_52

    .line 1868
    add-int/lit8 v16, v16, 0x1

    .line 1869
    array-length v3, v15

    move/from16 v0, v16

    if-le v0, v3, :cond_51

    .line 1870
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    array-length v0, v15

    move/from16 v16, v0

    .line 1878
    :cond_51
    :goto_1c
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    .local v47, strBuf:Ljava/lang/StringBuilder;
    if-lez v16, :cond_53

    const/4 v3, 0x1

    aget-byte v3, v15, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v13, v3, 0xf

    .line 1880
    .local v13, bcdValue:I
    :goto_1d
    const/16 v3, 0xa

    if-ge v13, v3, :cond_58

    .line 1881
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1882
    const/16 v23, 0x2

    .restart local v23       #i:I
    :goto_1e
    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_56

    .line 1883
    aget-byte v3, v15, v23

    and-int/lit8 v13, v3, 0xf

    .line 1884
    const/16 v3, 0xa

    if-ge v13, v3, :cond_55

    .line 1885
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1886
    aget-byte v3, v15, v23

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v13, v3, 0xf

    .line 1887
    const/16 v3, 0xa

    if-ge v13, v3, :cond_54

    .line 1888
    add-int/lit8 v3, v13, 0x30

    int-to-char v3, v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1882
    :goto_1f
    add-int/lit8 v23, v23, 0x1

    goto :goto_1e

    .line 1875
    .end local v13           #bcdValue:I
    .end local v23           #i:I
    .end local v47           #strBuf:Ljava/lang/StringBuilder;
    :cond_52
    array-length v0, v15

    move/from16 v16, v0

    .line 1876
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length empty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1879
    .restart local v47       #strBuf:Ljava/lang/StringBuilder;
    :cond_53
    const/16 v13, 0xf

    goto :goto_1d

    .line 1891
    .restart local v13       #bcdValue:I
    .restart local v23       #i:I
    :cond_54
    move/from16 v23, v16

    goto :goto_1f

    .line 1895
    :cond_55
    move/from16 v23, v16

    goto :goto_1f

    .line 1898
    :cond_56
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-lt v3, v5, :cond_57

    .line 1900
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI(G): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    goto/16 :goto_1

    .line 1906
    :cond_57
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtcCdmaSIMRecords, IMSI(G): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1910
    .end local v23           #i:I
    :cond_58
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v6, v15, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1914
    .end local v13           #bcdValue:I
    .end local v16           #dataLen:I
    .end local v47           #strBuf:Ljava/lang/StringBuilder;
    :cond_59
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying IMSI(G) length zero "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v15, :cond_5a

    array-length v3, v15

    :goto_20
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5a
    const/4 v3, -0x1

    goto :goto_20

    .line 1922
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #data:[B
    :pswitch_2b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1923
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v30, v0

    .line 1924
    .local v30, isSIMRemoved:[I
    const/16 v22, 0x0

    .line 1925
    .local v22, hotSwapTakeEffect:Z
    if-eqz v30, :cond_5b

    move-object/from16 v0, v30

    array-length v3, v0

    if-lez v3, :cond_5b

    const/4 v3, 0x0

    aget v3, v30, v3

    if-nez v3, :cond_5b

    .line 1927
    or-int/lit8 v22, v22, 0x1

    .line 1929
    .end local v22           #hotSwapTakeEffect:Z
    :cond_5b
    const-string v5, "HtcCdmaSIMRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v30, :cond_5c

    move-object/from16 v0, v30

    array-length v3, v0

    :goto_21
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    if-eqz v22, :cond_2

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    goto/16 :goto_1

    .line 1929
    :cond_5c
    const/4 v3, -0x1

    goto :goto_21

    .line 1936
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v30           #isSIMRemoved:[I
    :pswitch_2c
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "EVENT_SIM_SWAP_STATUS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    new-instance v27, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1938
    .local v27, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1358
    .end local v27           #intent:Landroid/content/Intent;
    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_5d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1360
    const-string v5, "HtcCdmaSIMRecords"

    const-string v6, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1352
    :catch_2
    move-exception v19

    .line 1353
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1354
    const-string v5, "HtcCdmaSIMRecords"

    const-string v6, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1358
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v15       #data:[B
    .restart local v41       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_5e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1360
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1352
    :catch_3
    move-exception v19

    .line 1353
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1354
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1358
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_5f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1360
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1352
    :catch_4
    move-exception v19

    .line 1353
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1354
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1358
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .end local v41           #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_60
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1360
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1352
    :catch_5
    move-exception v19

    .line 1353
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1354
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1358
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :cond_61
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1360
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1352
    :catch_6
    move-exception v19

    .line 1353
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1354
    const-string v3, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_10

    .line 832
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_c
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_1e
        :pswitch_16
        :pswitch_17
        :pswitch_20
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_11
        :pswitch_21
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_25
        :pswitch_26
        :pswitch_1d
        :pswitch_1c
        :pswitch_4
        :pswitch_13
        :pswitch_28
        :pswitch_24
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2753
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2757
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    return-void
.end method

.method public notifyIMSIchange()V
    .locals 3

    .prologue
    .line 2812
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    if-eqz v0, :cond_0

    .line 2813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Notify ICC loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :goto_0
    return-void

    .line 2818
    :cond_0
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Nothing notify "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 2213
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const/4 v2, 0x0

    .line 2218
    .local v2, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2219
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2220
    const-string v3, "gsm.icc.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2230
    :cond_1
    :goto_0
    const-string v3, "READY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2231
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete, but SIM is not ready state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :goto_1
    return-void

    .line 2221
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2222
    const-string v3, "gsm.icc.sub.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2223
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2224
    const-string v3, "gsm.icc.uim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2227
    :cond_4
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2237
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2240
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2245
    .local v1, operator:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2248
    .local v0, htcThreadUpdateOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2253
    :cond_6
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2254
    :cond_7
    const-string v3, "gsm.cdma.uim.operator.numeric"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2256
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 2264
    const-string v3, "gsm.sim.operator.iso-country"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==>HtcCdmaSIMRecords:operator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    move-object v0, v1

    .line 2275
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_9

    .line 2277
    const-string v3, "gsm.sim.operator.alpha"

    const-string v4, "China Telecom"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2285
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2290
    :cond_a
    if-eqz v0, :cond_d

    .line 2291
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v4, 0x6e

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->htcThreadUpdateCarrierInProvider(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2259
    :cond_b
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2281
    :cond_c
    const-string v3, "SIM"

    const-string v4, "[HtcCdmaSIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2295
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 311
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 312
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 313
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 315
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 316
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 317
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 318
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 319
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 324
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->gsmImsi:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 341
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    .line 346
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 350
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 352
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 2348
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 2351
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 2353
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2201
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2203
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2204
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onAllRecordsLoaded()V

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 2205
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2206
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "HtcCdmaSIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 758
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 760
    :cond_0
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 724
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 725
    .local v1, phone:Lcom/android/internal/telephony/PhoneBase;
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    if-eqz v4, :cond_1

    .line 726
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v4

    if-nez v4, :cond_0

    .line 728
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cfu_query_when_campon"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 730
    .local v0, cfuQuery:Z
    :goto_0
    if-ne v0, v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 733
    const/16 v2, 0x6c

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 737
    .end local v0           #cfuQuery:Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eqz v2, :cond_1

    .line 738
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 739
    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v1           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 742
    :cond_1
    return-void

    .restart local v1       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    move v0, v3

    .line 728
    goto :goto_0
.end method

.method resetVoiceCallForwardingFlag(IZ)V
    .locals 3
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 712
    if-eq p1, v2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 714
    .local v0, phone:Lcom/android/internal/telephony/PhoneBase;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eq v1, p2, :cond_0

    .line 716
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 717
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 2061
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2065
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 2073
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2078
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 394
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 397
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v0, "gsm.sim.types"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, simType:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 412
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 2771
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2772
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2774
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 9
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 595
    if-eq p1, v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 599
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    .line 602
    .local v7, phone:Lcom/android/internal/telephony/PhoneBase;
    check-cast v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v7           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 607
    if-eqz p2, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 616
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v8, 0x6fcb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 622
    if-eqz p2, :cond_4

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 630
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v6

    .line 635
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 610
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 626
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 11
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 647
    if-eq p1, v0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 651
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    .line 654
    .local v8, phone:Lcom/android/internal/telephony/PhoneBase;
    check-cast v8, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v8           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_3

    .line 659
    if-eqz p2, :cond_5

    .line 663
    if-nez p3, :cond_4

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 669
    :goto_1
    if-eqz p4, :cond_2

    .line 670
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 671
    .local v9, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v9

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 672
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v9

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    .end local v9           #str:[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v10, 0x6fcb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 689
    if-eqz p2, :cond_6

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 697
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v6

    .line 702
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 666
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    and-int/lit8 v2, p3, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 678
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 678
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 693
    .end local v7           #i:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 454
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 480
    :goto_0
    return-void

    .line 458
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 459
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 461
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    .line 463
    .local v7, phone:Lcom/android/internal/telephony/PhoneBase;
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 465
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 476
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 478
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 507
    if-eq p1, v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    if-gez p2, :cond_4

    .line 514
    const/4 p2, -0x1

    .line 521
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 530
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 534
    if-gez p2, :cond_7

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 552
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v6

    .line 571
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 515
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 518
    const/16 p2, 0xff

    goto :goto_1

    :cond_5
    move v0, v1

    .line 530
    goto :goto_2

    .line 545
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 549
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 559
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method
