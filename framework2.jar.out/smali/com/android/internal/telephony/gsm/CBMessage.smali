.class public final Lcom/android/internal/telephony/gsm/CBMessage;
.super Ljava/lang/Object;
.source "CBMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/CBMessage$2;,
        Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
    }
.end annotation


# static fields
.field static final CBHEAD_LEN:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "Cell broadcast"

.field static final MAX_CHANNELS:I = 0x14

.field static final MAX_DATE_LEN:I = 0x5d


# instance fields
.field CBmessageBody:Ljava/lang/String;

.field protected cb_msg:[B

.field protected dcs:I

.field protected etwsDay:B

.field protected etwsDigitalSignature:[B

.field protected etwsEmergencyUserAlert:I

.field protected etwsHour:B

.field protected etwsMinute:B

.field protected etwsMonth:B

.field protected etwsPopup:I

.field protected etwsSecond:B

.field protected etwsTimeZone:B

.field protected etwsWarningType:I

.field protected etwsYear:B

.field protected gs:I

.field protected mDcs:Ljava/lang/String;

.field protected mEncodingType:I

.field protected mEncodingTypeSet:Z

.field protected mMsgId:Ljava/lang/String;

.field mPdu:[B

.field messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

.field protected mode:Z

.field protected msg_id:I

.field protected msg_len:I

.field protected page:I

.field protected pages:I

.field protected septetCount:I

.field protected sn:I

.field protected umtsMsgType:I

.field protected updatenum:I

.field userData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return-void
.end method

.method public static newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;
    .locals 6
    .parameter "lines"

    .prologue
    .line 143
    :try_start_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1-newFromCBM()-cb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 148
    .local v2, msg:Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 150
    .local v1, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseEtwsCBPdu([B)V

    .line 165
    .end local v1           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v2           #msg:Lcom/android/internal/telephony/gsm/CBMessage;
    :goto_0
    return-object v2

    .line 153
    .restart local v1       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v2       #msg:Lcom/android/internal/telephony/gsm/CBMessage;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseUmtsCBPdu([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v2           #msg:Lcom/android/internal/telephony/gsm/CBMessage;
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "Cell broadcast"

    const-string v4, "CB PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v2, 0x0

    goto :goto_0

    .line 160
    .end local v0           #ex:Ljava/lang/Throwable;
    .restart local v2       #msg:Lcom/android/internal/telephony/gsm/CBMessage;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getCBChannel()V
    .locals 3

    .prologue
    .line 615
    const-string v1, "Cell broadcast"

    const-string v2, "getCBChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 618
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getCSCB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCBMessageClass()Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    return-object v0
.end method

.method public getCb_msg()[B
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getDcs()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    return v0
.end method

.method public getEtwsDay()B
    .locals 1

    .prologue
    .line 244
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDay:B

    return v0
.end method

.method public getEtwsDigitalSignature()[B
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDigitalSignature:[B

    return-object v0
.end method

.method public getEtwsHour()B
    .locals 1

    .prologue
    .line 248
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsHour:B

    return v0
.end method

.method public getEtwsMinute()B
    .locals 1

    .prologue
    .line 252
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMinute:B

    return v0
.end method

.method public getEtwsMonth()B
    .locals 1

    .prologue
    .line 240
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMonth:B

    return v0
.end method

.method public getEtwsSecond()B
    .locals 1

    .prologue
    .line 256
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsSecond:B

    return v0
.end method

.method public getEtwsTimeZone()B
    .locals 1

    .prologue
    .line 260
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsTimeZone:B

    return v0
.end method

.method public getEtwsYear()B
    .locals 1

    .prologue
    .line 236
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsYear:B

    return v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 643
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$CBMessage$CBMessageClass:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 653
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 645
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 647
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 649
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 651
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    return v0
.end method

.method public getMsg_len()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getRowData()[B
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    return-object v0
.end method

.method public getSeptetCount()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getUpdatenum()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getmDcs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    return-object v0
.end method

.method public getmEncodingType()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    return v0
.end method

.method public getmMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isMode()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    return v0
.end method

.method public ismEncodingTypeSet()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return v0
.end method

.method public parseCBPdu([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 343
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 346
    .local v0, size:I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 347
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v4, v4, v9

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 348
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 351
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 354
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    if-gez v3, :cond_0

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 361
    .local v1, x:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    if-gez v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    add-int/lit16 v2, v3, 0x100

    .line 365
    .local v2, y:I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 366
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 369
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 372
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 375
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total pages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 378
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    invoke-static {p1, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iput v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 380
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 381
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "septetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBUserData()Ljava/lang/String;

    .line 384
    return-void

    .line 360
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    mul-int/lit16 v1, v3, 0x100

    .restart local v1       #x:I
    goto/16 :goto_0

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v2, v3, v8

    .restart local v2       #y:I
    goto/16 :goto_1
.end method

.method public parseCBUserData()Ljava/lang/String;
    .locals 17

    .prologue
    .line 426
    const/4 v11, 0x0

    .line 427
    .local v11, hasMessageClass:Z
    const/16 v16, 0x0

    .line 428
    .local v16, userDataCompressed:Z
    const/4 v9, 0x0

    .line 430
    .local v9, encodingType:I
    const-string v2, "Cell broadcast"

    const-string v3, "3-parseCBUserData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v13, 0x0

    .line 435
    .local v13, offset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_2

    .line 436
    const/4 v9, 0x1

    .line 498
    :goto_0
    if-eqz v9, :cond_0

    .line 499
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 504
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    array-length v8, v2

    .line 507
    .local v8, count:I
    packed-switch v9, :pswitch_data_0

    .line 528
    :goto_1
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_1

    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB message body (raw): \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 530
    .local v15, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 531
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB message body length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-nez v11, :cond_b

    .line 533
    sget-object v2, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    .line 550
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v2

    .line 437
    .end local v8           #count:I
    .end local v15           #temp:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 438
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 439
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    .line 440
    const/4 v9, 0x3

    .line 447
    const/4 v13, 0x2

    .line 448
    const/4 v2, 0x2

    new-array v1, v2, [B

    .line 449
    .local v1, tmp:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v12

    .line 451
    .local v12, languageEncoded:Ljava/lang/String;
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "languageEncoded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v1           #tmp:[B
    .end local v12           #languageEncoded:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x40

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    const/16 v16, 0x1

    .line 457
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const/4 v11, 0x1

    .line 459
    :goto_4
    if-eqz v16, :cond_7

    .line 460
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1- Unsupported CB data coding scheme (compression) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 457
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 463
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 465
    :pswitch_0
    const/4 v9, 0x1

    .line 466
    goto/16 :goto_0

    .line 469
    :pswitch_1
    const/4 v9, 0x3

    .line 470
    goto/16 :goto_0

    .line 474
    :pswitch_2
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 - Unsupported CB data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 480
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_a

    .line 481
    const/4 v11, 0x1

    .line 482
    const/16 v16, 0x0

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 486
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 489
    :cond_9
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 492
    :cond_a
    const-string v2, "Cell broadcast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 - Unsupported CB data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 510
    .restart local v8       #count:I
    :pswitch_3
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V

    .line 511
    .local v14, strResult:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 515
    .end local v14           #strResult:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 520
    :pswitch_5
    :try_start_0
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    sub-int v4, v8, v13

    const-string v5, "utf-16"

    invoke-direct {v2, v3, v13, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 521
    :catch_0
    move-exception v10

    .line 522
    .local v10, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 523
    const-string v2, "Cell broadcast"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 535
    .end local v10           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v15       #temp:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_2

    .line 537
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 540
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 543
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 546
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 463
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 535
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public parseEtwsCBPdu([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseEtwsCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 179
    .local v0, size:I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 180
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v4, v4, v8

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 181
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 184
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 187
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    if-gez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 194
    .local v1, x:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    if-gez v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    add-int/lit16 v2, v3, 0x100

    .line 198
    .local v2, y:I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 199
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xfe

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsWarningType:I

    .line 203
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsWarningType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsWarningType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsEmergencyUserAlert:I

    .line 207
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsEmergencyUserAlert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsEmergencyUserAlert:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsPopup:I

    .line 211
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsPopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsPopup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    invoke-static {v3, v4, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v7

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsYear:B

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v8

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMonth:B

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v6

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDay:B

    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v9

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsHour:B

    .line 220
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v10

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMinute:B

    .line 221
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsSecond:B

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsTimeZone:B

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDigitalSignature:[B

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x7

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput v7, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 227
    iput v8, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 228
    iput v8, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 229
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 230
    iput v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 231
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 233
    return-void

    .line 193
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    mul-int/lit16 v1, v3, 0x100

    .restart local v1       #x:I
    goto/16 :goto_0

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v2, v3, v9

    .restart local v2       #y:I
    goto/16 :goto_1
.end method

.method public parseUmtsCBPdu([B)V
    .locals 13
    .parameter "pdu"

    .prologue
    .line 273
    const-string v9, "Cell broadcast"

    const-string v10, "2-parseUmtsCBPdu()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    array-length v9, p1

    add-int/lit8 v6, v9, -0x6

    .line 276
    .local v6, size:I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 278
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->umtsMsgType:I

    .line 281
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    if-gez v9, :cond_0

    .line 282
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    add-int/lit16 v9, v9, 0x100

    mul-int/lit16 v7, v9, 0x100

    .line 285
    .local v7, x:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    if-gez v9, :cond_1

    .line 286
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    add-int/lit16 v8, v9, 0x100

    .line 289
    .local v8, y:I
    :goto_1
    add-int v9, v7, v8

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 290
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg_id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    add-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 294
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v9, v9, 0xc0

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 297
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v9, v9, 0xf

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 300
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatenum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 303
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dcs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    and-int/lit16 v4, v9, 0xff

    .line 307
    .local v4, numberOfPages:I
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number-of-Pages:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    array-length v9, p1

    add-int/lit8 v9, v9, -0x6

    add-int/lit8 v9, v9, -0x1

    new-array v0, v9, [B

    .line 310
    .local v0, cbData:[B
    const/4 v9, 0x7

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {p1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/16 v9, 0x52

    new-array v3, v9, [B

    .line 313
    .local v3, infoPage:[B
    const/4 v2, 0x0

    .line 314
    .local v2, infoLength:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 316
    mul-int/lit8 v9, v1, 0x53

    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v0, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    mul-int/lit8 v9, v1, 0x53

    array-length v10, v3

    add-int/2addr v9, v10

    aget-byte v9, v0, v9

    and-int/lit16 v2, v9, 0xff

    .line 318
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS-Message-Information-Page   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS-Message-Information-Length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-array v9, v2, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 322
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v12, v12

    invoke-static {v3, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v9, v9

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 324
    mul-int/lit8 v9, v6, 0x8

    div-int/lit8 v9, v9, 0x7

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 325
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "septetCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg_len:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBUserData()Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 284
    .end local v0           #cbData:[B
    .end local v1           #i:I
    .end local v2           #infoLength:I
    .end local v3           #infoPage:[B
    .end local v4           #numberOfPages:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    mul-int/lit16 v7, v9, 0x100

    .restart local v7       #x:I
    goto/16 :goto_0

    .line 288
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v8, v9, v10

    .restart local v8       #y:I
    goto/16 :goto_1

    .line 331
    .restart local v0       #cbData:[B
    .restart local v1       #i:I
    .restart local v2       #infoLength:I
    .restart local v3       #infoPage:[B
    .restart local v4       #numberOfPages:I
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 335
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 336
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 337
    return-void
.end method

.method public setCB(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 631
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 632
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setCBEntry(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 557
    const-string v2, "Cell broadcast"

    const-string v3, "setCBChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :try_start_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x146

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x149

    if-ne v2, v3, :cond_1

    .line 565
    :cond_0
    move-object v0, p2

    .line 566
    .local v0, sChannels:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/gsm/CBMessage$1;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/gsm/CBMessage$1;-><init>(Lcom/android/internal/telephony/gsm/CBMessage;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 602
    .end local v0           #sChannels:Ljava/lang/String;
    :cond_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 603
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ISms;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCb_msg([B)V
    .locals 0
    .parameter "cb_msg"

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 847
    return-void
.end method

.method public setDcs(I)V
    .locals 0
    .parameter "dcs"

    .prologue
    .line 750
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 751
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .parameter "gs"

    .prologue
    .line 798
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 799
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    .line 671
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 734
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 735
    return-void
.end method

.method public setMsg_len(I)V
    .locals 0
    .parameter "msg_len"

    .prologue
    .line 830
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 831
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 766
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 767
    return-void
.end method

.method public setPages(I)V
    .locals 0
    .parameter "pages"

    .prologue
    .line 782
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 783
    return-void
.end method

.method public setSeptetCount(I)V
    .locals 0
    .parameter "septetCount"

    .prologue
    .line 862
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 863
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .parameter "sn"

    .prologue
    .line 718
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 719
    return-void
.end method

.method public setUpdatenum(I)V
    .locals 0
    .parameter "updatenum"

    .prologue
    .line 814
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 815
    return-void
.end method

.method public setmDcs(Ljava/lang/String;)V
    .locals 0
    .parameter "mDcs"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    .line 703
    return-void
.end method

.method public setmEncodingType(I)V
    .locals 0
    .parameter "mEncodingType"

    .prologue
    .line 878
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 879
    return-void
.end method

.method public setmEncodingTypeSet(Z)V
    .locals 0
    .parameter "mEncodingTypeSet"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 895
    return-void
.end method

.method public setmMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter "mMsgId"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    .line 687
    return-void
.end method
