.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$DeliveryPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_FOR_CRICKET:I = 0x83

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_FOR_CRICKET:I = 0x96

.field public static final MAX_USER_DATA_SEPTETS_FOR_KT:I = 0x5a

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b

.field private static mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;


# instance fields
.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 186
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "smb"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 190
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 543
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 567
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 571
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 572
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 573
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 574
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 575
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 576
    return-object v0

    .line 567
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZII)[I
    .locals 5
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "nli"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x2

    .line 585
    if-ne v4, p3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 588
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 589
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 590
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 591
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v2, v0, v4

    .line 592
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 593
    return-object v0

    .line 585
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 980
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 985
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 599
    const/4 v1, 0x0

    .line 601
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 602
    invoke-static {p1, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    invoke-static {p2, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 607
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 608
    .local v0, ret:[I
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v2, v0, v4

    .line 609
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v2, v0, v5

    .line 610
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 611
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 612
    .end local v0           #ret:[I
    :goto_0
    return-object v0

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "index"
    .parameter "data"

    .prologue
    .line 419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 421
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 422
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 429
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v2

    .line 425
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 429
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "phoneType"

    .prologue
    .line 452
    const/4 v1, 0x2

    if-ne v1, p2, :cond_1

    .line 453
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 455
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_0

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 464
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 458
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 460
    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    if-eqz v0, :cond_0

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    goto :goto_0

    .line 464
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "isCdmaFormat"

    .prologue
    .line 471
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 472
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 479
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 475
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 479
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "pdu"

    .prologue
    .line 220
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v1

    .line 221
    .local v1, isCdmaFormat:Z
    if-eqz v1, :cond_0

    const-string v0, "3gpp2"

    .line 223
    .local v0, format:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    return-object v2

    .line 221
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "messageType"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, smsMsg:Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .line 274
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    packed-switch p1, :pswitch_data_0

    .line 282
    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 285
    :goto_0
    if-nez v0, :cond_0

    .line 286
    if-eqz v1, :cond_0

    .line 287
    new-instance v0, Landroid/telephony/SmsMessage;

    .end local v0           #smsMsg:Landroid/telephony/SmsMessage;
    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 290
    .restart local v0       #smsMsg:Landroid/telephony/SmsMessage;
    :cond_0
    return-object v0

    .line 276
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 277
    goto :goto_0

    .line 279
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 280
    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 6
    .parameter "pdu"
    .parameter "format"

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, isCdmaFormat:Z
    const-string v3, "3gpp2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const/4 v0, 0x1

    .line 242
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 253
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-nez v1, :cond_0

    .line 254
    const-string v3, "3gpp2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 266
    :cond_0
    :goto_1
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_2
    return-object v2

    .line 243
    :cond_1
    const-string v3, "3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 246
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromPdu(): unsupported message format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 256
    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_3
    const-string v3, "3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_4
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromPdu(): unsupported message format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 752
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 753
    add-int/lit8 v0, v0, 0x1

    .line 754
    if-le v0, p2, :cond_0

    .line 758
    .end local v1           #i:I
    :goto_1
    return v1

    .line 752
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 758
    goto :goto_1
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
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
    .line 909
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 910
    .local v0, activePhone:I
    const/16 v1, 0x80

    .line 913
    .local v1, limit:I
    const/4 v4, 0x0

    .line 914
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 916
    .local v7, textLen:I
    const/4 v5, 0x0

    .line 918
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v8, 0x86

    if-ge v7, v8, :cond_0

    .line 919
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 920
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    .line 945
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 930
    .end local v6           #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    div-int v2, v7, v1

    .line 932
    .local v2, msgCount:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 933
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v4, v7, :cond_1

    .line 934
    const/4 v3, 0x0

    .line 935
    .local v3, nextPos:I
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    .line 937
    if-le v3, v4, :cond_1

    if-le v3, v7, :cond_2

    .end local v3           #nextPos:I
    :cond_1
    move-object v6, v5

    .line 945
    .restart local v6       #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 942
    .end local v6           #result:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #nextPos:I
    :cond_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    move v4, v3

    .line 944
    goto :goto_1
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
    .line 776
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
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
    const/4 v0, 0x0

    const/16 v7, 0x8c

    const/16 v1, 0xa0

    const/4 v11, -0x1

    const/4 v8, 0x1

    .line 786
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v6

    :goto_0
    sput-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 791
    const-string v6, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encoding detail>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupportSegmentIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 798
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_0

    move v0, v8

    .line 799
    .local v0, bAscii:Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x46

    if-le v6, v9, :cond_3

    .line 801
    :cond_2
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    .line 807
    .end local v0           #bAscii:Z
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v6

    if-nez v6, :cond_a

    .line 810
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v8, :cond_8

    .line 813
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_7

    .line 814
    const/16 v1, 0x83

    .line 864
    .local v1, limit:I
    :goto_1
    const/4 v3, 0x0

    .line 865
    .local v3, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 866
    .local v5, textLen:I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v3, v5, :cond_5

    .line 868
    const/4 v2, 0x0

    .line 870
    .local v2, nextPos:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v6

    if-ne v6, v8, :cond_22

    .line 871
    sub-int v6, v5, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v3, v6

    .line 896
    :goto_3
    if-le v2, v3, :cond_4

    if-le v2, v5, :cond_29

    .line 897
    :cond_4
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v2           #nextPos:I
    :cond_5
    return-object v4

    .line 786
    .end local v1           #limit:I
    .end local v3           #pos:I
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #textLen:I
    :cond_6
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v6

    goto/16 :goto_0

    .line 817
    :cond_7
    const/16 v1, 0x8c

    .restart local v1       #limit:I
    goto :goto_1

    .line 820
    .end local v1           #limit:I
    :cond_8
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_9

    .line 821
    const/16 v1, 0x96

    .restart local v1       #limit:I
    goto :goto_1

    .line 824
    .end local v1           #limit:I
    :cond_9
    const/16 v1, 0xa0

    .restart local v1       #limit:I
    goto :goto_1

    .line 826
    .end local v1           #limit:I
    :cond_a
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xd2

    if-ne v6, v9, :cond_b

    .line 828
    const/16 v1, 0x50

    .restart local v1       #limit:I
    goto :goto_1

    .line 830
    .end local v1           #limit:I
    :cond_b
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x50

    if-ne v6, v9, :cond_c

    .line 831
    const/16 v1, 0x5a

    .restart local v1       #limit:I
    goto/16 :goto_1

    .line 833
    .end local v1           #limit:I
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v6

    if-ne v6, v8, :cond_d

    .line 834
    const/16 v1, 0x8c

    .restart local v1       #limit:I
    goto/16 :goto_1

    .line 837
    .end local v1           #limit:I
    :cond_d
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v6, v8, :cond_16

    .line 838
    const/4 v6, 0x2

    if-ne p1, v6, :cond_10

    .line 839
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_f

    if-ne p1, v11, :cond_e

    const/16 v1, 0x99

    .restart local v1       #limit:I
    :goto_4
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_e
    const/16 v1, 0x95

    goto :goto_4

    :cond_f
    const/16 v1, 0x86

    goto :goto_4

    .line 841
    :cond_10
    if-ne p1, v8, :cond_13

    .line 842
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_12

    if-ne p1, v11, :cond_11

    const/16 v1, 0x99

    .restart local v1       #limit:I
    :goto_5
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_11
    const/16 v1, 0x95

    goto :goto_5

    :cond_12
    const/16 v1, 0x86

    goto :goto_5

    .line 845
    :cond_13
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_15

    if-ne p1, v11, :cond_14

    const/16 v1, 0x99

    .restart local v1       #limit:I
    :goto_6
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_14
    const/16 v1, 0x92

    goto :goto_6

    :cond_15
    const/16 v1, 0x86

    goto :goto_6

    .line 848
    :cond_16
    const/4 v6, 0x2

    if-ne p1, v6, :cond_19

    .line 849
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_18

    if-ne p1, v11, :cond_17

    .restart local v1       #limit:I
    :goto_7
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_17
    const/16 v1, 0x9b

    goto :goto_7

    :cond_18
    move v1, v7

    goto :goto_7

    .line 851
    :cond_19
    if-ne p1, v8, :cond_1c

    .line 852
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_1b

    if-ne p1, v11, :cond_1a

    .restart local v1       #limit:I
    :goto_8
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_1a
    const/16 v1, 0x9b

    goto :goto_8

    :cond_1b
    move v1, v7

    goto :goto_8

    .line 854
    :cond_1c
    const/16 v6, 0xe

    if-ne p1, v6, :cond_1f

    .line 855
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_1e

    if-ne p1, v11, :cond_1d

    .restart local v1       #limit:I
    :cond_1d
    :goto_9
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_1e
    move v1, v7

    goto :goto_9

    .line 858
    :cond_1f
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_21

    if-ne p1, v11, :cond_20

    .restart local v1       #limit:I
    :goto_a
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_20
    const/16 v1, 0x98

    goto :goto_a

    :cond_21
    move v1, v7

    goto :goto_a

    .line 873
    .restart local v1       #limit:I
    .restart local v2       #nextPos:I
    .restart local v3       #pos:I
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #textLen:I
    :cond_22
    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_26

    .line 877
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v6, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-eq v6, v8, :cond_24

    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v6

    if-nez v6, :cond_25

    .line 881
    :cond_24
    sub-int v6, v5, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v3, v6

    goto/16 :goto_3

    .line 884
    :cond_25
    invoke-static {p0, v3, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v2

    goto/16 :goto_3

    .line 888
    :cond_26
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd2

    if-ne v6, v7, :cond_28

    .line 889
    const/16 v1, 0x50

    .line 894
    :cond_27
    :goto_b
    div-int/lit8 v6, v1, 0x2

    sub-int v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v3, v6

    goto/16 :goto_3

    .line 890
    :cond_28
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x50

    if-ne v6, v7, :cond_27

    .line 891
    const/16 v1, 0x5a

    goto :goto_b

    .line 901
    :cond_29
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    move v3, v2

    .line 903
    goto/16 :goto_2
.end method

.method public static fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .parameter "phoneType"
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
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 699
    if-ne v9, p1, :cond_2

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 708
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v6, v8, :cond_4

    .line 709
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_3

    const/16 v0, 0x99

    .line 716
    .local v0, limit:I
    :goto_1
    const/4 v2, 0x0

    .line 717
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 718
    .local v5, textLen:I
    new-instance v3, Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v5, :cond_1

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, nextPos:I
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_7

    .line 722
    if-ne p1, v9, :cond_6

    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v6, v8, :cond_6

    .line 724
    sub-int v6, v5, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    .line 732
    :goto_3
    if-le v1, v2, :cond_0

    if-le v1, v5, :cond_8

    .line 733
    :cond_0
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v1           #nextPos:I
    :cond_1
    return-object v3

    .line 699
    .end local v0           #limit:I
    .end local v2           #pos:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v5           #textLen:I
    :cond_2
    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    goto :goto_0

    .line 709
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    const/16 v0, 0x86

    goto :goto_1

    .line 712
    :cond_4
    iget v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_5

    const/16 v0, 0xa0

    .restart local v0       #limit:I
    :goto_4
    goto :goto_1

    .end local v0           #limit:I
    :cond_5
    const/16 v0, 0x8c

    goto :goto_4

    .line 727
    .restart local v0       #limit:I
    .restart local v1       #nextPos:I
    .restart local v2       #pos:I
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #textLen:I
    :cond_6
    const/4 v6, -0x1

    invoke-static {p0, v2, v0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto :goto_3

    .line 730
    :cond_7
    div-int/lit8 v6, v0, 0x2

    sub-int v7, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    goto :goto_3

    .line 737
    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    move v2, v1

    .line 739
    goto/16 :goto_2
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
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
    .line 618
    const/4 v1, 0x0

    .line 619
    .local v1, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v2, 0x0

    .line 620
    .local v2, callback:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 621
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 622
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 623
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 625
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    sput-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 631
    if-nez v1, :cond_4

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v13, 0x2

    if-nez v2, :cond_5

    const/4 v13, 0x0

    :goto_1
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v12, v13, 0x3

    .line 643
    .local v12, totalBytes:I
    rsub-int v4, v12, 0xac

    .line 644
    .local v4, maxBytes:I
    mul-int/lit8 v13, v4, 0x8

    div-int/lit8 v7, v13, 0x7

    .line 647
    .local v7, maxSeptets:I
    move v5, v4

    .line 649
    .local v5, maxConcatenatedBytes:I
    mul-int/lit8 v13, v5, 0x8

    div-int/lit8 v6, v13, 0x7

    .line 651
    .local v6, maxConcatenatedSeptets:I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 652
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move v3, v6

    .line 659
    .local v3, limit:I
    :goto_2
    const/4 v9, 0x0

    .line 660
    .local v9, pos:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 661
    .local v11, textLen:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v9, v11, :cond_3

    .line 663
    const/4 v8, 0x0

    .line 664
    .local v8, nextPos:I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 665
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 667
    sub-int v13, v11, v9

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    .line 675
    :goto_4
    if-le v8, v9, :cond_2

    if-le v8, v11, :cond_b

    .line 676
    :cond_2
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fragmentTextForCSIM failed ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v8           #nextPos:I
    :cond_3
    return-object v10

    .line 631
    .end local v3           #limit:I
    .end local v4           #maxBytes:I
    .end local v5           #maxConcatenatedBytes:I
    .end local v6           #maxConcatenatedSeptets:I
    .end local v7           #maxSeptets:I
    .end local v9           #pos:I
    .end local v10           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #textLen:I
    .end local v12           #totalBytes:I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_1

    .restart local v4       #maxBytes:I
    .restart local v5       #maxConcatenatedBytes:I
    .restart local v6       #maxConcatenatedSeptets:I
    .restart local v7       #maxSeptets:I
    .restart local v12       #totalBytes:I
    :cond_6
    move v3, v5

    .line 652
    goto :goto_2

    .line 655
    :cond_7
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move v3, v7

    .restart local v3       #limit:I
    :goto_5
    goto :goto_2

    .end local v3           #limit:I
    :cond_8
    move v3, v4

    goto :goto_5

    .line 670
    .restart local v3       #limit:I
    .restart local v8       #nextPos:I
    .restart local v9       #pos:I
    .restart local v10       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #textLen:I
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v8

    goto :goto_4

    .line 673
    :cond_a
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v11, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    goto :goto_4

    .line 680
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    move v9, v8

    .line 682
    goto/16 :goto_3
.end method

.method private static fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 10
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
    .line 1705
    move v0, p2

    .line 1709
    .local v0, activePhone:I
    const/4 v7, 0x2

    if-ne v7, v0, :cond_5

    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    :goto_0
    sput-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 1713
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encoding detail>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v1

    .line 1722
    .local v1, bsupportems:Z
    const/4 v7, 0x1

    if-ne v7, v0, :cond_0

    .line 1723
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1724
    const-string v7, "Goven"

    const-string v8, " is special non EMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v1, 0x0

    .line 1731
    :cond_0
    if-nez v1, :cond_9

    .line 1733
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 1735
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_6

    .line 1736
    const/16 v2, 0x83

    .line 1782
    .local v2, limit:I
    :goto_1
    const/4 v4, 0x0

    .line 1783
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1784
    .local v6, textLen:I
    new-instance v5, Ljava/util/ArrayList;

    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1785
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v4, v6, :cond_4

    .line 1786
    const/4 v3, 0x0

    .line 1787
    .local v3, nextPos:I
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 1788
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    :cond_1
    if-nez v1, :cond_20

    .line 1790
    :cond_2
    sub-int v7, v6, v4

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v3, v4, v7

    .line 1805
    :goto_3
    if-le v3, v4, :cond_3

    if-le v3, v6, :cond_24

    .line 1806
    :cond_3
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    .end local v3           #nextPos:I
    :cond_4
    return-object v5

    .line 1709
    .end local v1           #bsupportems:Z
    .end local v2           #limit:I
    .end local v4           #pos:I
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #textLen:I
    :cond_5
    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    goto/16 :goto_0

    .line 1739
    .restart local v1       #bsupportems:Z
    :cond_6
    const/16 v2, 0x8c

    .restart local v2       #limit:I
    goto :goto_1

    .line 1742
    .end local v2           #limit:I
    :cond_7
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_8

    .line 1743
    const/16 v2, 0x96

    .restart local v2       #limit:I
    goto :goto_1

    .line 1746
    .end local v2           #limit:I
    :cond_8
    const/16 v2, 0xa0

    .restart local v2       #limit:I
    goto/16 :goto_1

    .line 1748
    .end local v2           #limit:I
    :cond_9
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_a

    .line 1750
    const/16 v2, 0x50

    .restart local v2       #limit:I
    goto/16 :goto_1

    .line 1752
    .end local v2           #limit:I
    :cond_a
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_b

    .line 1753
    const/16 v2, 0x5a

    .restart local v2       #limit:I
    goto/16 :goto_1

    .line 1755
    .end local v2           #limit:I
    :cond_b
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_14

    .line 1756
    const/4 v7, 0x2

    if-ne p1, v7, :cond_e

    .line 1757
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    const/4 v7, -0x1

    if-ne p1, v7, :cond_c

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_4
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_c
    const/16 v2, 0x95

    goto :goto_4

    :cond_d
    const/16 v2, 0x86

    goto :goto_4

    .line 1759
    :cond_e
    const/4 v7, 0x1

    if-ne p1, v7, :cond_11

    .line 1760
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    const/4 v7, -0x1

    if-ne p1, v7, :cond_f

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_5
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_f
    const/16 v2, 0x95

    goto :goto_5

    :cond_10
    const/16 v2, 0x86

    goto :goto_5

    .line 1763
    :cond_11
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    const/4 v7, -0x1

    if-ne p1, v7, :cond_12

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_6
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_12
    const/16 v2, 0x92

    goto :goto_6

    :cond_13
    const/16 v2, 0x86

    goto :goto_6

    .line 1766
    :cond_14
    const/4 v7, 0x2

    if-ne p1, v7, :cond_17

    .line 1767
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    const/4 v7, -0x1

    if-ne p1, v7, :cond_15

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_7
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_15
    const/16 v2, 0x9b

    goto :goto_7

    :cond_16
    const/16 v2, 0x8c

    goto :goto_7

    .line 1769
    :cond_17
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1a

    .line 1770
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    const/4 v7, -0x1

    if-ne p1, v7, :cond_18

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_8
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_18
    const/16 v2, 0x9b

    goto :goto_8

    :cond_19
    const/16 v2, 0x8c

    goto :goto_8

    .line 1772
    :cond_1a
    const/16 v7, 0xe

    if-ne p1, v7, :cond_1d

    .line 1773
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    const/4 v7, -0x1

    if-ne p1, v7, :cond_1b

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_9
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_1b
    const/16 v2, 0xa0

    goto :goto_9

    :cond_1c
    const/16 v2, 0x8c

    goto :goto_9

    .line 1776
    :cond_1d
    sget-object v7, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v7, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    const/4 v7, -0x1

    if-ne p1, v7, :cond_1e

    const/16 v2, 0xa0

    .restart local v2       #limit:I
    :goto_a
    goto/16 :goto_1

    .end local v2           #limit:I
    :cond_1e
    const/16 v2, 0x98

    goto :goto_a

    :cond_1f
    const/16 v2, 0x8c

    goto :goto_a

    .line 1793
    .restart local v2       #limit:I
    .restart local v3       #nextPos:I
    .restart local v4       #pos:I
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_20
    invoke-static {p0, v4, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v3

    goto/16 :goto_3

    .line 1797
    :cond_21
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-ne v7, v8, :cond_23

    .line 1798
    const/16 v2, 0x50

    .line 1803
    :cond_22
    :goto_b
    div-int/lit8 v7, v2, 0x2

    sub-int v8, v6, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v3, v4, v7

    goto/16 :goto_3

    .line 1799
    :cond_23
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_22

    .line 1800
    const/16 v2, 0x5a

    goto :goto_b

    .line 1810
    :cond_24
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    move v4, v3

    .line 1812
    goto/16 :goto_2
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
    .line 1701
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "phoneType"

    .prologue
    .line 436
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 437
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 443
    .local v0, pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 440
    .end local v0           #pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 2
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "sMessage"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 1540
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v1

    .line 1541
    .local v1, isCdmaFormat:Z
    if-eqz v1, :cond_0

    .line 1543
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .line 1550
    .local v0, deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_0
    return-object v0

    .line 1546
    .end local v0           #deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .restart local v0       #deliveruPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    goto :goto_0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .parameter "locale"

    .prologue
    .line 1497
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 1207
    const/4 v0, -0x1

    return v0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    .prologue
    .line 1637
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1638
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1640
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1642
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method private static final getSmsFacility(I)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1688
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 1689
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1691
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1150
    const/4 v1, 0x1

    if-ne v1, p6, :cond_0

    .line 1151
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1158
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    return-object v1

    .line 1156
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 1061
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1062
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1064
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1071
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1067
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1168
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 1169
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1176
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1172
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1009
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_1

    .line 1011
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    :goto_0
    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1014
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdma getSubmitPdu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_1
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1011
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1016
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1018
    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm getSubmitPdu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "nli"

    .prologue
    .line 1128
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v7

    .line 1129
    .local v7, isCdmaFormat:Z
    if-eqz v7, :cond_1

    .line 1132
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 1140
    .local v8, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, v8}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v0

    .line 1132
    .end local v8           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .restart local v8       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 1096
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 1097
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 1099
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1106
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1102
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 1186
    const/4 v1, 0x2

    if-ne v1, p5, :cond_0

    .line 1187
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1194
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1190
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 496
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v0

    .line 497
    .local v0, isCdmaFormat:Z
    if-eqz v0, :cond_0

    .line 499
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    .line 501
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;I)I
    .locals 1
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 509
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 510
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 195
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 196
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 200
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 198
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 951
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    if-nez v1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v0, :cond_0

    .line 957
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "line"

    .prologue
    .line 358
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 360
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 361
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 366
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 363
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"
    .parameter "phoneType"

    .prologue
    .line 374
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 375
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 380
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 377
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 305
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 308
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"
    .parameter "phoneType"

    .prologue
    .line 316
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 317
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 322
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 319
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method protected static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "line"

    .prologue
    .line 329
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 331
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 332
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 337
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 334
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"
    .parameter "phoneType"

    .prologue
    .line 345
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 346
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 351
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 348
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 390
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"
    .parameter "phoneType"

    .prologue
    .line 398
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 399
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 404
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 401
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 1202
    return-void
.end method


# virtual methods
.method public getAbsoluteValidityPeriod()J
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getAbsoluteValidityPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDateOfReport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 2

    .prologue
    .line 1675
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 1676
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1678
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->kddiGetMessageId()I

    move-result v0

    goto :goto_0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPriority()I

    move-result v0

    return v0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPrivacyInd()I

    move-result v0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSmsc()[B
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRawSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfOriginatingAddress()I

    move-result v0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfScAddress()I

    move-result v0

    return v0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getdataCodingScheme()I

    move-result v0

    return v0
.end method

.method public getsinglesmsPhoneType()I
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getsinglesmsPhoneType()I

    move-result v0

    return v0
.end method

.method public isCMAS()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCMAS()Z

    move-result v0

    return v0
.end method

.method public isCdmaFormat()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1569
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eq v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    .line 1571
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1573
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isFromEVDO()Z
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v0

    return v0
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiProprietaryServiceCategory()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isOutGoingSms()Z
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
    .locals 1
    .parameter "cmas"

    .prologue
    .line 1601
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V

    .line 1602
    return-void
.end method

.method public setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
    .locals 1
    .parameter "cmas"

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 1611
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 1427
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setIndexOnIcc(I)V

    .line 1428
    return-void
.end method

.method public setsinglesmsPhoneType(I)V
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    .line 1823
    return-void
.end method
