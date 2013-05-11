.class public Lcom/htc/wrap/android/telephony/HtcWrapSmsManager;
.super Ljava/lang/Object;
.source "HtcWrapSmsManager.java"


# static fields
.field public static final KDDI_RESULT_ST_CANCEL_COMPLETED:I = 0x2c

.field public static final KDDI_RESULT_ST_ERROR_C_NO_REGISTER:I = 0x20

.field public static final KDDI_RESULT_ST_ERROR_C_NO_USER:I = 0x1f

.field public static final KDDI_RESULT_ST_ERROR_C_RESTRICTED:I = 0x22

.field public static final KDDI_RESULT_ST_ERROR_C_SUSPEND:I = 0x21

.field public static final KDDI_RESULT_ST_ERROR_GENERIC_FAILURE:I = 0x2b

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_USE:I = 0x28

.field public static final KDDI_RESULT_ST_ERROR_IMF_DOESNT_WORK:I = 0x27

.field public static final KDDI_RESULT_ST_ERROR_MAIL_BOX_OVER:I = 0x29

.field public static final KDDI_RESULT_ST_ERROR_ON_CALLING:I = 0x2a

.field public static final KDDI_RESULT_ST_ERROR_R_NO_REGISTER:I = 0x24

.field public static final KDDI_RESULT_ST_ERROR_R_NO_USER:I = 0x23

.field public static final KDDI_RESULT_ST_ERROR_R_RESTRICTED:I = 0x26

.field public static final KDDI_RESULT_ST_ERROR_R_SUSPEND:I = 0x25

.field public static final KDDI_RESULT_ST_OK:I = 0x1e

.field public static final KDDI_RESULT_TR_CANCEL_COMPLETED:I = 0x18

.field public static final KDDI_RESULT_TR_ERROR_C_NO_REGISTER:I = 0xc

.field public static final KDDI_RESULT_TR_ERROR_C_NO_USER:I = 0xb

.field public static final KDDI_RESULT_TR_ERROR_C_RESTRICTED:I = 0xe

.field public static final KDDI_RESULT_TR_ERROR_C_SUSPEND:I = 0xd

.field public static final KDDI_RESULT_TR_ERROR_GENERIC_FAILURE:I = 0x17

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_USE:I = 0x14

.field public static final KDDI_RESULT_TR_ERROR_IMF_DOESNT_WORK:I = 0x13

.field public static final KDDI_RESULT_TR_ERROR_IMF_UNEXPECTED_OCCURRENCE:I = 0x15

.field public static final KDDI_RESULT_TR_ERROR_ON_CALLING:I = 0x16

.field public static final KDDI_RESULT_TR_ERROR_R_NO_REGISTER:I = 0x10

.field public static final KDDI_RESULT_TR_ERROR_R_NO_USER:I = 0xf

.field public static final KDDI_RESULT_TR_ERROR_R_RESTRICTED:I = 0x12

.field public static final KDDI_RESULT_TR_ERROR_R_SUSPEND:I = 0x11

.field public static final KDDI_RESULT_TR_OK:I = 0xa

.field public static final KDDI_SEND_MODE_STANDARD_API:I = 0x3

.field public static final KDDI_SEND_MODE_STORE:I = 0x2

.field public static final KDDI_SEND_MODE_TRANSACTION:I = 0x1

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x101

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x102


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMessageToIcc(Landroid/telephony/SmsManager;Z[B[BI)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 233
    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/SmsManager;->copyMessageToIcc(Z[B[BI)Z

    move-result v0

    return v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyMessageToIccExt(Landroid/telephony/SmsManager;[B[BII)I
    .locals 2
    .parameter "smsMgr"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "phoneType"

    .prologue
    .line 444
    if-eqz p0, :cond_0

    .line 445
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/SmsManager;->copyMessageToIccExt([B[BII)I

    move-result v0

    return v0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyMessageToIccForResult(Landroid/telephony/SmsManager;Z[B[BI)I
    .locals 2
    .parameter "smsMgr"
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 260
    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v0

    return v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyMessageToIccForResult(Landroid/telephony/SmsManager;[B[BI)I
    .locals 2
    .parameter "smsMgr"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIccForResult([B[BI)I

    move-result v0

    return v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteMessageFromIcc(Landroid/telephony/SmsManager;ZI)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "isCdmaFormat"
    .parameter "messageIndex"

    .prologue
    .line 267
    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    move-result v0

    return v0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteMessageFromIccExt(Landroid/telephony/SmsManager;II)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "messageIndex"
    .parameter "phoneType"

    .prologue
    .line 450
    if-eqz p0, :cond_0

    .line 451
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->deleteMessageFromIccExt(II)Z

    move-result v0

    return v0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static divideMessageExt(Landroid/telephony/SmsManager;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .parameter "smsMgr"
    .parameter "text"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllMessagesFromIccExt(Landroid/telephony/SmsManager;I)Ljava/util/ArrayList;
    .locals 2
    .parameter "smsMgr"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->getAllMessagesFromIccExt(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCarrierID(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 379
    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCarrierID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getExtIccSmsPhoneType(Landroid/telephony/SmsManager;)I
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 490
    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getExtIccSmsPhoneType()I

    move-result v0

    return v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIccSmsCount(Landroid/telephony/SmsManager;)I
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 483
    if-eqz p0, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getIccSmsCount()I

    move-result v0

    return v0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIccSmsCountExt(Landroid/telephony/SmsManager;I)I
    .locals 2
    .parameter "smsMgr"
    .parameter "phoneType"

    .prologue
    .line 476
    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->getIccSmsCountExt(I)I

    move-result v0

    return v0

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageFromSim(Landroid/telephony/SmsManager;I)[B
    .locals 2
    .parameter "smsMgr"
    .parameter "nIndexOnSim"

    .prologue
    .line 288
    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->getMessageFromSim(I)[B

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageFromSimExt(Landroid/telephony/SmsManager;II)[B
    .locals 2
    .parameter "smsMgr"
    .parameter "nIndexOnSim"
    .parameter "phonetype"

    .prologue
    .line 511
    if-eqz p0, :cond_0

    .line 512
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->getMessageFromSimExt(II)[B

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageFromSimWithType(Landroid/telephony/SmsManager;ZI)[B
    .locals 2
    .parameter "smsMgr"
    .parameter "bIsCdmaFormat"
    .parameter "nIndexOnSim"

    .prologue
    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->getMessageFromSimWithType(ZI)[B

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSMSC(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 306
    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSMSC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSMSCExt(Landroid/telephony/SmsManager;I)Ljava/lang/String;
    .locals 2
    .parameter "smsMgr"
    .parameter "phonetype"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->getSMSCExt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTestBCSMS(Landroid/telephony/SmsManager;)[I
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 402
    if-eqz p0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getTestBCSMS()[I

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static htcSendRawPdu(Landroid/telephony/SmsManager;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 2
    .parameter "smsMgr"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 388
    if-eqz p0, :cond_0

    .line 389
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static kddiSendCancel(Landroid/telephony/SmsManager;Landroid/content/Context;Landroid/app/PendingIntent;)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "context"
    .parameter "cancelIntent"

    .prologue
    .line 520
    if-eqz p0, :cond_0

    .line 521
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->kddiSendCancel(Landroid/content/Context;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static kddiSendTextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "sendingMode"
    .parameter "context"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    .line 530
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/SmsManager;->kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static queryBCSMS(Landroid/telephony/SmsManager;II)[I
    .locals 2
    .parameter "smsMgr"
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 362
    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->queryBCSMS(II)[I

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestGetBCSMSServiceEntry(Landroid/telephony/SmsManager;II)[I
    .locals 2
    .parameter "smsMgr"
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 355
    if-eqz p0, :cond_0

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestGetBCSMSServiceLabel(Landroid/telephony/SmsManager;II)Landroid/os/Bundle;
    .locals 2
    .parameter "smsMgr"
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 347
    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestGetBCSMSServiceNumber(Landroid/telephony/SmsManager;)I
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 339
    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceNumber()I

    move-result v0

    return v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendCDMATextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 146
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendDataMessageExt(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "phoneType"

    .prologue
    .line 438
    if-eqz p0, :cond_0

    .line 439
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/SmsManager;->sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendMultipartDataMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
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

    .prologue
    .line 212
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_0

    .line 213
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/SmsManager;->sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendMultipartTextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "nli"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_0

    .line 193
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendMultipartTextMessageExt(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_0

    .line 430
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/SmsManager;->sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendTextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendTextMessageExt(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"
    .parameter "phoneType"

    .prologue
    .line 414
    if-eqz p0, :cond_0

    .line 415
    invoke-virtual/range {p0 .. p7}, Landroid/telephony/SmsManager;->sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setBCSMS(Landroid/telephony/SmsManager;II)I
    .locals 2
    .parameter "smsMgr"
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 369
    if-eqz p0, :cond_0

    .line 370
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    move-result v0

    return v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setExtIccSmsPhoneType(Landroid/telephony/SmsManager;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "phoneType"

    .prologue
    .line 469
    if-eqz p0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->setExtIccSmsPhoneType(I)V

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSMSC(Landroid/telephony/SmsManager;Ljava/lang/String;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "address"

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->setSMSC(Ljava/lang/String;)V

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSMSCExt(Landroid/telephony/SmsManager;Ljava/lang/String;I)V
    .locals 2
    .parameter "smsMgr"
    .parameter "address"
    .parameter "phonetype"

    .prologue
    .line 505
    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->setSMSCExt(Ljava/lang/String;I)V

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTestBCSMS(Landroid/telephony/SmsManager;II)I
    .locals 2
    .parameter "smsMgr"
    .parameter "kddiTestData"
    .parameter "makerData"

    .prologue
    .line 396
    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SmsManager;->setTestBCSMS(II)I

    move-result v0

    return v0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static syncCmasServiceTable(Landroid/telephony/SmsManager;)Landroid/os/Bundle;
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 332
    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->syncCmasServiceTable()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateMessageOnIcc(Landroid/telephony/SmsManager;ZII[B)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "isCdmaFormat"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 274
    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    move-result v0

    return v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateMessageOnIccExt(Landroid/telephony/SmsManager;II[BI)Z
    .locals 2
    .parameter "smsMgr"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 456
    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/telephony/SmsManager;->updateMessageOnIccExt(II[BI)Z

    move-result v0

    return v0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static updateNvItem(Landroid/telephony/SmsManager;)V
    .locals 2
    .parameter "smsMgr"

    .prologue
    .line 324
    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->updateNvItem()V

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sendMultipartTextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 2
    .parameter "smsMgr"
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
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

    .prologue
    .line 202
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual/range {p1 .. p7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMgr is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
