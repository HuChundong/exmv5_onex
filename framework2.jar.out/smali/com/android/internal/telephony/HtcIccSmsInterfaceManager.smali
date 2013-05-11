.class public abstract Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "HtcIccSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_BCSMS_SERVICE_ENTRY:I = 0x8

.field private static final EVENT_GET_BCSMS_SERVICE_LABEL:I = 0x7

.field private static final EVENT_GET_BCSMS_SERVICE_NUMBER:I = 0x6

.field private static final EVENT_GET_CARRIER_ID:I = 0xf

.field private static final EVENT_GET_TEST_BCSMS:I = 0xe

.field private static final EVENT_SET_BCSMS:I = 0x9

.field private static final EVENT_SET_TEST_BCSMS:I = 0xd

.field static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field private final mBCSmsLock:Ljava/lang/Object;

.field private mBCSmsServiceEntry:[I

.field private mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

.field private mBCSmsServiceNumber:I

.field private mBCSmsSetResult:I

.field private mCarrierID:Ljava/lang/String;

.field private final mCarrierIDLock:Ljava/lang/Object;

.field private final mGetTestBCSmsLock:Ljava/lang/Object;

.field mHtcHandler:Landroid/os/Handler;

.field private final mSetTestBCSmsLock:Ljava/lang/Object;

.field private mTestBCSmsGetResult:[I

.field private mTestBCSmsSetResult:I


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceNumber:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceEntry:[I

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsSetResult:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsSetResult:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsGetResult:[I

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIccEfForResultByFormat(ZI[B[B)I
    .locals 1
    .parameter "isCdmaFormat"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 334
    const-string v0, "copyMessageToIccEfForResultByFormat:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 335
    const-string v0, "Copying message to ICC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 336
    const/4 v0, -0x1

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 360
    const-string v1, "disableCellBroadcast:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x0

    return v1
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 380
    const-string v1, "disableCellBroadcastRange:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 382
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x0

    return v1
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 350
    const-string v1, "enableCellBroadcast:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Enabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    return v1
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 370
    const-string v1, "enableCellBroadcastRange:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Enabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    return v1
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 410
    const-string v2, "getCarrierID()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    monitor-enter v3

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 413
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "C8F8000000"

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object v2

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get Carrier ID"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getMessageFromIccEfExt(II)[B
    .locals 1
    .parameter "nIndexOnSim"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "getMessageFromIccEfExt:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 317
    const-string v0, "Get message from ICC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 390
    const-string v1, "getSMSCExt:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 392
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Get SMSC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTestBCSMS()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    .local v0, context:Landroid/content/Context;
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "getTestBCSMS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 298
    .local v1, response:Landroid/os/Message;
    const-string v2, "getTestBCSMS"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 301
    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    .line 308
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 428
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcIccSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 5
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 231
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "requestGetBCSMSServiceEntry"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, response:Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetBCSMSServiceEntry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryBCSMS(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceEntry:[I

    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get BCSMS service entry"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 6
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 205
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "requestGetBCSMSServiceLabel"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 210
    .local v2, response:Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestGetBCSMSServiceLable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetBCSMSServiceLabel(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 225
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    return-object v0

    .line 218
    :cond_0
    :try_start_3
    const-string v3, "index"

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getIndex()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v3, "label_encode"

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getLabel_encode()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v3, "label"

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "interrupted while trying to get BCSMS service label"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 5

    .prologue
    .line 186
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "requestGetBCSMSServiceNumber"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, response:Landroid/os/Message;
    const-string v2, "requestGetBCSMSServiceNumber start"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetBCSMSServiceNumber(Landroid/os/Message;)V

    .line 192
    const-string v2, "requestGetBCSMSServiceNumber end"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return mBCSmsServiceNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 200
    iget v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceNumber:I

    return v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get BCSMS service number"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setBCSMS(II)I
    .locals 6
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 249
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "set BCSMS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 254
    .local v2, response:Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBCSMS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBCSMS(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    iget v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsSetResult:I

    return v3

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to set BCSMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "phoneType"

    .prologue
    .line 400
    const-string v1, "setSMSCExt:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Set SMSC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setTestBCSMS(II)I
    .locals 5
    .parameter "kddiTestData"
    .parameter "makerData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    .local v0, context:Landroid/content/Context;
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "setTestBCSMS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mHtcHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 276
    .local v1, response:Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTestBCSMS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 286
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateMessageOnIccEfByFormat(ZII[B)Z
    .locals 1
    .parameter "isCdmaFormat"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 343
    const-string v0, "updateMessageOnIccEfByFormat:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 344
    const-string v0, "Updating message on ICC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public updateNvItem()V
    .locals 3

    .prologue
    .line 324
    const-string v0, "updateNvItem:"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "updateNvItem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method
