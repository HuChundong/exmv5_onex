.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;,
        Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_HTC_ID_TERMINAL_RESPONSE:I = 0x2725

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final SECURE:Z = false

.field static final STK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static sInstance:Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEventListEnabled:[Z

.field private mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mIsDisposed:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mScreenBusy:Z

.field private mStkAppInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    .line 100
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 2
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 113
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 115
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 118
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    .line 186
    const/16 v0, 0xb

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    .line 215
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 221
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/cat/CatService;->initCatService(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running CAT service. STK app installed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    return-void

    .line 186
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-object v0
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 631
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 632
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 633
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 650
    sget-boolean v1, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 638
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 640
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 644
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 646
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 654
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 659
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 661
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 662
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 663
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 664
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 665
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 814
    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .parameter "phone_type"

    .prologue
    .line 818
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 7
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    .line 783
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 784
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_2

    .line 785
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 787
    :cond_0
    const/4 v0, 0x0

    monitor-exit v6

    .line 804
    :goto_0
    return-object v0

    .line 793
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 794
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v6

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 795
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    .line 796
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Reinitialize the Service with IccRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/internal/telephony/cat/CatService;->initCatService(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    .line 800
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 802
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 670
    const-string v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 674
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 675
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 676
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 679
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 12
    .parameter "resMsg"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1009
    :cond_0
    const/4 v5, 0x0

    .line 1010
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    .line 1011
    .local v6, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    .line 1012
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    const/4 v7, 0x0

    .line 1013
    .local v7, includeAdditionalInfo:Z
    const/4 v4, 0x0

    .line 1015
    .local v4, additionalInfo:I
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v10, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v10

    aget v2, v2, v10

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1017
    :pswitch_0
    const/4 v6, 0x1

    .line 1029
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v10, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v2, v2, v10

    packed-switch v2, :pswitch_data_1

    .line 1126
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1127
    iput-object v11, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1031
    :pswitch_3
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v10, :cond_2

    move v6, v3

    .line 1032
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v0

    .line 1031
    goto :goto_2

    .line 1035
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 1036
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1039
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    .line 1040
    .local v8, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1043
    if-nez v6, :cond_1

    .line 1044
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v8, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v8, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1048
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 1051
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1056
    .end local v8           #input:Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1060
    iput-object v11, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1064
    :pswitch_7
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    if-eqz v0, :cond_1

    .line 1066
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isNeedToHandleBip()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 1070
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1074
    iput-object v11, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1083
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 1085
    :pswitch_9
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1096
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 1118
    const/4 v5, 0x0

    .line 1119
    goto/16 :goto_1

    .line 1098
    :pswitch_b
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v2, :cond_1

    .line 1101
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isNeedToHandleBip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v9

    .line 1103
    .local v9, params:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1104
    new-instance v5, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    iget-object v2, v9, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v5, v0, v11, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 1106
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .line 1107
    .end local v9           #params:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1111
    iput-object v11, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 1029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1083
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    .line 1096
    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_b
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 25
    .parameter "cmdParams"
    .parameter "isProactiveCmd"

    .prologue
    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    const/16 v22, 0x0

    .line 401
    .local v22, isRefresh:Z
    new-instance v20, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 402
    .local v20, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 534
    const-string v2, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 404
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 409
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 538
    :cond_0
    :goto_2
    :pswitch_1
    if-nez v22, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 541
    :cond_1
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.command"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v21, intent:Landroid/content/Intent;
    const-string v2, "STK CMD"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 407
    .end local v21           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 413
    :pswitch_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_0

    .line 414
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 420
    :pswitch_3
    const/16 v22, 0x1

    .line 422
    goto :goto_2

    .line 424
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 428
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v2, :pswitch_data_1

    .line 438
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 430
    :pswitch_6
    new-instance v7, Lcom/android/internal/telephony/cat/DTTZResponseData;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 431
    .local v7, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 434
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v7, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v7       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 476
    .end local v7           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-result-object v24

    .line 477
    .local v24, newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    if-nez v24, :cond_3

    .line 479
    const-string v2, "BIP - OPEN_CHANNEL: channel setting is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 484
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isNeedToHandleBip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/BipProxy;->canHandleNewChannel()Z

    move-result v2

    if-nez v2, :cond_4

    .line 487
    const-string v2, "BIP - OPEN_CHANNEL: channel is full"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    new-instance v13, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v13, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(ILjava/lang/Integer;Lcom/android/internal/telephony/cat/BearerDescription;)V

    .line 489
    .local v13, response:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 494
    .end local v13           #response:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v2, :cond_7

    .line 495
    const-string v2, "BIP - OPEN_CHANNEL: need to be confirmed by user before open channel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 499
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v2, :cond_6

    .line 500
    const-string v2, "BIP - OPEN_CHANNEL: need to be confirmed by user before open channel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 503
    :cond_6
    const-string v2, "BIP - OPEN_CHANNEL: handleCallSetupRequestFromSim directly"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 513
    .end local v24           #newChannel:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    :cond_7
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isNeedToHandleBip()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 514
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto/16 :goto_0

    .line 517
    :cond_8
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIP: Not handle for cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    :cond_9
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 523
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LANGUAGE_NOTIFICATION: lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->lang:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    sget-object v23, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .local v23, locale:Ljava/util/Locale;
    move-object/from16 v2, p1

    .line 525
    check-cast v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->lang:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 526
    new-instance v23, Ljava/util/Locale;

    .end local v23           #locale:Ljava/util/Locale;
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LanguageNotificationParams;->lang:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v23       #locale:Ljava/util/Locale;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LocaleChange"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    invoke-static/range {v23 .. v23}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 531
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 428
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 7
    .parameter "rilMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 324
    if-nez p1, :cond_1

    .line 325
    const-string v0, "handleRilMsg() rilMsg is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v6, 0x0

    .line 331
    .local v6, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 377
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 334
    if-eqz v6, :cond_0

    .line 335
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_2

    .line 336
    const-string v0, "MSG_ID_EVENT_NOTIFY ResultCode = OK"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 339
    :cond_2
    const-string v0, "MSG_ID_EVENT_NOTIFY ResultCode != OK"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_0

    .line 342
    const-string v0, "MSG_ID_EVENT_NOTIFY send TR for the unsupported cases of SET_UP_CALL"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v1, v6, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 349
    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 350
    if-eqz v6, :cond_0

    .line 351
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_3

    .line 352
    const-string v0, "MSG_ID_PROACTIVE_COMMAND ResultCode = OK"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_4

    .line 356
    const-string v0, "MSG_ID_PROACTIVE_COMMAND ResultCode = PRFRMD_ICON_NOT_DISPLAYED"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 361
    :cond_4
    const-string v0, "MSG_ID_PROACTIVE_COMMAND ResultCode != OK"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v1, v6, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 371
    :pswitch_4
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 372
    if-eqz v6, :cond_0

    .line 373
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 551
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;->handleBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 558
    return-void
.end method

.method private initCatService(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 5
    .parameter "ci"
    .parameter "ir"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 244
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 245
    invoke-static {p0, p3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 246
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/IccCard;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    const-string v0, "ro.stk.fakecmd"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/cat/CatService;->registerHtcReceiver(ZLandroid/content/Context;)V

    .line 256
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy;-><init>(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    .line 257
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->registerCMEvents()V

    .line 258
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIsDisposed:Z

    .line 259
    return-void
.end method

.method static final isNeedToHandleBip()Z
    .locals 2

    .prologue
    .line 1209
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1131
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1133
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1135
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    move v2, v4

    .line 1137
    .local v2, numReceiver:I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 1135
    .end local v2           #numReceiver:I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private registerCMEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 275
    const-string v0, "CatService: is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private registerHtcReceiver(ZLandroid/content/Context;)V
    .locals 3
    .parameter "register"
    .parameter "context"

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHtcReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.stk.fakecmd"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.stk.fakenotify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-virtual {p2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 985
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 992
    :goto_0
    return v1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 992
    goto :goto_0
.end method

.method private responseEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    .locals 9
    .parameter "resMsg"

    .prologue
    const/4 v1, 0x2

    .line 1164
    const/4 v4, 0x0

    .line 1165
    .local v4, additionalInfo:[B
    const/4 v2, 0x0

    .line 1166
    .local v2, src:I
    const/4 v3, 0x0

    .line 1168
    .local v3, dest:I
    iget v0, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    packed-switch v0, :pswitch_data_0

    .line 1200
    :pswitch_0
    sget-boolean v0, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected event download: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1170
    :pswitch_1
    iget-object v7, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->language:Ljava/lang/String;

    .line 1171
    .local v7, language:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1173
    .local v6, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1174
    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 1175
    .local v8, languageData:[B
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1176
    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1178
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1180
    .end local v6           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v8           #languageData:[B
    :cond_1
    if-eqz v4, :cond_0

    .line 1182
    const/16 v2, 0x82

    .line 1183
    const/16 v3, 0x81

    .line 1204
    .end local v7           #language:Ljava/lang/String;
    :goto_1
    iget v1, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 1188
    :pswitch_2
    const/16 v2, 0x82

    .line 1189
    const/16 v3, 0x81

    .line 1191
    goto :goto_1

    .line 1194
    :pswitch_3
    const/4 v2, 0x2

    .line 1195
    const/16 v3, 0x81

    .line 1197
    goto :goto_1

    .line 1168
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;
    .locals 5
    .parameter "rilMsg"

    .prologue
    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, commandParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 1151
    .local v1, data:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1152
    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    .line 1159
    :cond_0
    :goto_0
    return-object v0

    .line 1154
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v2, v3, :cond_0

    .line 1155
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeGetCmdParams. resultCode =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 683
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 686
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 687
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 690
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 693
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 694
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 695
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 696
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 697
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 700
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 701
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 702
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 703
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 706
    if-eqz p2, :cond_0

    .line 707
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 708
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 709
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 712
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 715
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 716
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 718
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 721
    return-void
.end method

.method private unregisterCMEvents()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 285
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkEventEnabled(I)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 290
    sput-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->unregisterCMEvents()V

    .line 298
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 302
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_3

    .line 307
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-eqz v0, :cond_4

    .line 312
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->registerHtcReceiver(ZLandroid/content/Context;)V

    .line 314
    :cond_4
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mBipProxy:Lcom/android/internal/telephony/cat/BipProxy;

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIsDisposed:Z

    .line 317
    return-void
.end method

.method protected eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 726
    if-eqz p5, :cond_0

    .line 727
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v10, 0x0

    aput-boolean v10, v9, p1

    .line 730
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 733
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 734
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 737
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 740
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 741
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 742
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 743
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 746
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 747
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 748
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 749
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 750
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 753
    if-eqz p4, :cond_1

    .line 754
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .line 755
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 754
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 759
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 762
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 763
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 765
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, hexString:Ljava/lang/String;
    sget-boolean v9, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEND ENVELOPE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 769
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public getScreenBusyState()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 824
    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsDisposed:Z

    if-eqz v4, :cond_1

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disposed!! msg.what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 830
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 890
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized CAT command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 834
    :sswitch_1
    sget-boolean v4, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril message arrived, msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    :cond_2
    const/4 v2, 0x0

    .line 836
    .local v2, data:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 837
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 838
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 840
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #data:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 841
    .end local v2           #data:Ljava/lang/String;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 842
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 849
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 854
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 857
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 860
    :sswitch_5
    const-string v4, "MSG_ID_SIM_READY"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :sswitch_6
    const-string v4, "MSG_HTC_ID_TERMINAL_RESPONSE"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 866
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 867
    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    .line 868
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 869
    const-string v4, "response error, fake session end"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto/16 :goto_0

    .line 879
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const-string v4, "IccRefresh arrived"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    new-instance v1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 881
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 882
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 883
    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 884
    iput v5, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 886
    new-instance v4, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_3
        0x14 -> :sswitch_0
        0x2725 -> :sswitch_6
    .end sparse-switch
.end method

.method public notifyUserActivity(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 950
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 951
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserActivity keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 953
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v1           #resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    :cond_1
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserActivity exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 895
    monitor-enter p0

    if-nez p1, :cond_0

    .line 901
    :goto_0
    monitor-exit p0

    return-void

    .line 899
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 900
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 895
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onHandleEventList(IZ)V
    .locals 3
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 969
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleEventList event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    aput-boolean p2, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :cond_1
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleEventList exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    .locals 1
    .parameter "resMsg"

    .prologue
    .line 907
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 919
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 912
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->responseEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 9
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    .line 564
    if-nez p1, :cond_0

    .line 627
    :goto_0
    return-void

    .line 567
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 569
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 570
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_1

    .line 571
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 575
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 576
    .local v6, tag:I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_2

    .line 577
    or-int/lit16 v6, v6, 0x80

    .line 579
    :cond_2
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 580
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 581
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 582
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 583
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 592
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 593
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 594
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 595
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 596
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 599
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 600
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 601
    if-eqz p3, :cond_5

    .line 602
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 603
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 606
    if-eqz p3, :cond_3

    .line 607
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 611
    :cond_3
    if-eqz p5, :cond_6

    .line 612
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 617
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 618
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, hexString:Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    if-eqz v7, :cond_4

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TERMINAL RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    :cond_4
    const/16 v7, 0x2725

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 625
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 601
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    .end local v5           #response:Landroid/os/Message;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 614
    .restart local v3       #length:I
    :cond_6
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method public updateIdleScreenState(Z)V
    .locals 4
    .parameter "busy"

    .prologue
    .line 928
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    .line 929
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 930
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->SECURE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIdleScreenState: event is enabling! mScreenBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    if-nez v2, :cond_1

    .line 932
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 933
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    .end local v1           #resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    :cond_1
    :goto_0
    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, ex:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIdleScreenState exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
