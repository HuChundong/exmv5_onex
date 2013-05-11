.class public Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage;
.super Ljava/lang/Object;
.source "HtcWrapSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
    }
.end annotation


# static fields
.field public static final ENCODING_KSC5601:I = 0x4

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "index"
    .parameter "data"
    .parameter "isCdmaFormat"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "pdu"
    .parameter "messageType"

    .prologue
    .line 62
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 147
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Landroid/telephony/SmsMessage;->fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "nli"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "sAddress"
    .parameter "sCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "nli"
    .parameter "phonetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsoluteValidityPeriod(Landroid/telephony/SmsMessage;)J
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 437
    if-eqz p0, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getAbsoluteValidityPeriod()J

    move-result-wide v0

    return-wide v0

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCallBackNumber(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 352
    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCmasMessage(Landroid/telephony/SmsMessage;)Lcom/android/internal/telephony/CmasMessage;
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 460
    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDateOfReport(Landroid/telephony/SmsMessage;)J
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDateOfReport()J

    move-result-wide v0

    return-wide v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
    .locals 2
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 255
    new-instance v0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;

    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;-><init>(Landroid/telephony/SmsMessage$DeliveryPdu;)V

    return-object v0
.end method

.method public static getDestinationAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 366
    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHtcCmasMessage(Landroid/telephony/SmsMessage;)Landroid/telephony/HtcCmasMessage;
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 475
    if-eqz p0, :cond_0

    .line 476
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Landroid/telephony/SmsMessage;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0}, Landroid/telephony/SmsMessage;-><init>()V

    return-object v0
.end method

.method public static getMessageId(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 445
    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageId()I

    move-result v0

    return v0

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageIdentifier(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v0

    return v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .parameter "locale"

    .prologue
    .line 203
    invoke-static {p0}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Landroid/telephony/SmsMessage;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getPriority(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 341
    if-eqz p0, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v0

    return v0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrivacyInd(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 490
    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPrivacyInd()I

    move-result v0

    return v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRawSmsc(Landroid/telephony/SmsMessage;)[B
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 412
    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getRawSmsc()[B

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServiceCategory(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 520
    if-eqz p0, :cond_0

    .line 521
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v0

    return v0

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 197
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 279
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"

    .prologue
    .line 189
    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 288
    invoke-static/range {p0 .. p5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getToaOfOriginatingAddress(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 387
    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v0

    return v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getToaOfScAddress(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 380
    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getToaOfScAddress()I

    move-result v0

    return v0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTpdu(Landroid/telephony/SmsMessage;)[B
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 404
    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTpdu()[B

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getdataCodingScheme(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 320
    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getdataCodingScheme()I

    move-result v0

    return v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getsinglesmsPhoneType(Landroid/telephony/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getsinglesmsPhoneType()I

    move-result v0

    return v0

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 266
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v0

    return v0
.end method

.method public static isCMAS(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 451
    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isCMAS()Z

    move-result v0

    return v0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCdmaFormat(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 423
    if-eqz p0, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v0

    return v0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFromEVDO(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 430
    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isFromEVDO()Z

    move-result v0

    return v0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isKddiBCSMS(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 507
    if-eqz p0, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isKddiBCSMS()Z

    move-result v0

    return v0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isKddiProprietaryServiceCategory(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 514
    if-eqz p0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isKddiProprietaryServiceCategory()Z

    move-result v0

    return v0

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isOutGoingSms(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 359
    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isOutGoingSms()Z

    move-result v0

    return v0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isUnsupportedMessage(Landroid/telephony/SmsMessage;)Z
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 395
    if-eqz p0, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isUnsupportedMessage()Z

    move-result v0

    return v0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCmasMessage(Landroid/telephony/SmsMessage;Lcom/android/internal/telephony/CmasMessage;)V
    .locals 2
    .parameter "smsMessage"
    .parameter "cmas"

    .prologue
    .line 467
    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHtcCmasMessage(Landroid/telephony/SmsMessage;Landroid/telephony/HtcCmasMessage;)V
    .locals 2
    .parameter "smsMessage"
    .parameter "cmas"

    .prologue
    .line 481
    if-eqz p0, :cond_0

    .line 482
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setIndexOnIcc(Landroid/telephony/SmsMessage;I)V
    .locals 2
    .parameter "smsMessage"
    .parameter "nIndex"

    .prologue
    .line 330
    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 296
    invoke-static {p0}, Landroid/telephony/SmsMessage;->setPhoneType(I)V

    .line 297
    return-void
.end method

.method public static setsinglesmsPhoneType(Landroid/telephony/SmsMessage;I)V
    .locals 2
    .parameter "smsMessage"
    .parameter "phonetype"

    .prologue
    .line 535
    if-eqz p0, :cond_0

    .line 536
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setsinglesmsPhoneType(I)V

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "smsMessage is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
