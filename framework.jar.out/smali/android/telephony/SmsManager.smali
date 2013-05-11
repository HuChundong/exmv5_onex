.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsManager;


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x100

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x101

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    return-void
.end method

.method private KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    .line 1777
    :try_start_0
    const-string v1, "iSendCmail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;

    move-result-object v0

    .line 1779
    .local v0, sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    if-eqz v0, :cond_0

    .line 1780
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;->sendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    .end local v0           #sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    :cond_0
    :goto_0
    return-void

    .line 1782
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private copyMessageToIccDefault([B[BI)Z
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 788
    const/4 v2, 0x0

    .line 791
    .local v2, success:Z
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 792
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 793
    invoke-interface {v1, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 803
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 795
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 1674
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1675
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1676
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1678
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1679
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getSimSmsIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->isCdmaFormat()Z

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1680
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1681
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->isCdmaFormat()Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1682
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1687
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method private createMessageListFromRawRecordsExt(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1644
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1647
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1648
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1650
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1651
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1652
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1653
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1658
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method private deleteMessageFromIccDefault(I)Z
    .locals 6
    .parameter "messageIndex"

    .prologue
    .line 931
    const/4 v3, 0x0

    .line 932
    .local v3, success:Z
    const/16 v4, 0xaf

    new-array v2, v4, [B

    .line 933
    .local v2, pdu:[B
    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 936
    :try_start_0
    const-string v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 937
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 938
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4, v2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 949
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v4, "SmsManager"

    const-string v5, "Get NullPointerException in deleteMessageFromIcc()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 940
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    const/4 v2, 0x0

    .line 1074
    .local v2, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1075
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1076
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1087
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1078
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private htcCopyMessageToIccForResult([B[BI)I
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 848
    const/4 v2, -0x1

    .line 851
    .local v2, index:I
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 852
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 853
    invoke-interface {v1, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResult(I[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 864
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in copyMessageToIccForResult()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 855
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 691
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 692
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 693
    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 725
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 726
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 727
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 738
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 739
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 740
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeSendRequest(ZII)Z
    .locals 3
    .parameter "sendAck"
    .parameter "result"
    .parameter "messageId"

    .prologue
    .line 1700
    const/4 v1, 0x0

    .line 1703
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1704
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1705
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->kddiAcknowledgeSendRequest(ZII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1711
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1707
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc(Z[B[BI)Z
    .locals 3
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 811
    const/4 v1, 0x0

    .line 814
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 815
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 816
    invoke-interface {v0, p1, p4, p3, p2}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithType(ZI[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 821
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 818
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 776
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc(Z[B[BI)Z

    move-result v0

    .line 779
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIccDefault([B[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public copyMessageToIccExt([B[BII)I
    .locals 3
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "phoneType"

    .prologue
    .line 1476
    const/4 v1, -0x1

    .line 1479
    .local v1, index:I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1480
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0, p3, p2, p1, p4}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfExt(I[B[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1487
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1483
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccForResult(Z[B[BI)I
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 871
    const/4 v2, -0x1

    .line 874
    .local v2, index:I
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 875
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 876
    invoke-interface {v1, p1, p4, p3, p2}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultWithType(ZI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 887
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get NullPointerException in copyMessageToIccForResult(isCdmaFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 878
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public copyMessageToIccForResult([B[BI)I
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 841
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v0

    .line 844
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->htcCopyMessageToIccForResult([B[BI)I

    move-result v0

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 1
    .parameter "messageIndex"

    .prologue
    .line 917
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIccVZWLTE(I)Z

    move-result v0

    .line 920
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIccDefault(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMessageFromIcc(ZI)Z
    .locals 8
    .parameter "isCdmaFormat"
    .parameter "messageIndex"

    .prologue
    const/16 v3, 0xb0

    .line 956
    const/4 v4, 0x0

    .line 957
    .local v4, success:Z
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 959
    .local v3, recordLength:I
    :cond_0
    const/16 v5, 0xaf

    new-array v2, v5, [B

    .line 960
    .local v2, pdu:[B
    const/4 v5, -0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 963
    :try_start_0
    const-string v5, "isms"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 964
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 965
    const/4 v5, 0x0

    invoke-interface {v1, p1, p2, v5, v2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithType(ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 976
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v4

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get NullPointerException in deleteMessageFromIcc(isCdmaFormat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 967
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public deleteMessageFromIccExt(II)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "phoneType"

    .prologue
    .line 1503
    const/4 v2, 0x0

    .line 1504
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 1505
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 1508
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1509
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1510
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1, p2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfExt(II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1516
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1512
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public deleteMessageFromIccVZWLTE(I)Z
    .locals 4
    .parameter "messageIndex"

    .prologue
    const/4 v3, 0x1

    .line 895
    const-string v1, "gsm.vzw.sms.format"

    const-string v2, "3gpp2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, sFormat:Ljava/lang/String;
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 898
    invoke-virtual {p0, v3, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    move-result v1

    .line 900
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    move-result v1

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1136
    const/4 v1, 0x0

    .line 1139
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1140
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1147
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1143
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1198
    const/4 v1, 0x0

    .line 1201
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1202
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1209
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1205
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 279
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
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
    .line 1318
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1106
    const/4 v1, 0x0

    .line 1109
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1110
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1111
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1117
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1113
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1167
    const/4 v1, 0x0

    .line 1170
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1171
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1172
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1178
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1174
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    const/4 v1, 0x0

    .line 1562
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1563
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1564
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1570
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-direct {p0, v1, p1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecordsExt(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 1566
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1976
    const/4 v0, 0x0

    .line 1978
    .local v0, response:Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1979
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1980
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getCarrierID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1985
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1982
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getExtIccSmsPhoneType()I
    .locals 3

    .prologue
    .line 1624
    const/4 v1, 0x0

    .line 1626
    .local v1, phoneType:I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1627
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1628
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getExtIccSmsPhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1632
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1630
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getIccSmsCount()I
    .locals 2

    .prologue
    .line 1611
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1612
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1613
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getIccSmsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1617
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1615
    :catch_0
    move-exception v1

    .line 1617
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSmsCountExt(I)I
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1594
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1595
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1596
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getIccSmsCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1600
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1598
    :catch_0
    move-exception v1

    .line 1600
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageFromSim(I)[B
    .locals 5
    .parameter "nIndexOnSim"

    .prologue
    .line 1220
    const/4 v1, 0x0

    .line 1223
    .local v1, record:[B
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1224
    .local v2, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1225
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEf(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1237
    .end local v2           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getMessageFromSim()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1227
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getMessageFromSimExt(II)[B
    .locals 3
    .parameter "nIndexOnSim"
    .parameter "phonetype"

    .prologue
    .line 2045
    const/4 v0, 0x0

    .line 2048
    .local v0, record:[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2049
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2050
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfExt(II)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2056
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2052
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessageFromSimWithType(ZI)[B
    .locals 3
    .parameter "bIsCdmaFormat"
    .parameter "nIndexOnSim"

    .prologue
    .line 1242
    const/4 v0, 0x0

    .line 1245
    .local v0, record:[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1246
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1247
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfWithType(ZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1253
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1249
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1793
    const/4 v0, 0x0

    .line 1795
    .local v0, result:Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1796
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1797
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSC()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1803
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1799
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 2019
    const/4 v0, 0x0

    .line 2021
    .local v0, result:Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2022
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2023
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getSMSCExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2029
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2025
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getTestBCSMS()[I
    .locals 3

    .prologue
    .line 2004
    const/4 v0, 0x0

    .line 2006
    .local v0, response:[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2007
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2008
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getTestBCSMS()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2013
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2010
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 0
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 703
    invoke-direct/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 704
    return-void
.end method

.method public htcSendRawPduExt([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    .locals 8
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "phoneType"

    .prologue
    .line 711
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 712
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 713
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendRawPduExt([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public kddiSendCancel(Landroid/content/Context;Landroid/app/PendingIntent;)Z
    .locals 2
    .parameter "context"
    .parameter "cancelIntent"

    .prologue
    .line 1753
    :try_start_0
    const-string v1, "iSendCmail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;

    move-result-object v0

    .line 1755
    .local v0, sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    if-eqz v0, :cond_0

    .line 1756
    invoke-interface {v0, p2}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;->cancelCmail(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1761
    .end local v0           #sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    :goto_0
    return v1

    .line 1758
    :catch_0
    move-exception v1

    .line 1761
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "sendingMode"
    .parameter "context"

    .prologue
    .line 1736
    invoke-direct {p0, p1, p3, p4, p6}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 1737
    return-void
.end method

.method public queryBCSMS(II)[I
    .locals 1
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1944
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1931
    const/4 v0, 0x0

    .line 1933
    .local v0, response:[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1934
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1935
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceEntry(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1940
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1937
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1918
    const/4 v0, 0x0

    .line 1920
    .local v0, response:Landroid/os/Bundle;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1921
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1922
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1927
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1924
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 3

    .prologue
    .line 1905
    const/4 v0, 0x0

    .line 1907
    .local v0, response:I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1908
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1909
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceNumber()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1914
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1911
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 149
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 150
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 599
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 604
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 605
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "phoneType"

    .prologue
    .line 1442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1446
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 1447
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1451
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1452
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 1453
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDataExt(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 1456
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
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
    .line 618
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 623
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 628
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 629
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartDataMessageExt(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 648
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 653
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 654
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartDataExt(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v9

    .line 659
    .local v9, ex:Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "RemoteException in sendMultipartDataMessageExt "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 313
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "nli"
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "NLI"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 392
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 394
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 19
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
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

    .prologue
    .line 399
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 405
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 406
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 409
    .local v14, msgCnt:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v15, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_3

    .line 411
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 414
    .local v18, text:Ljava/lang/String;
    const/4 v8, 0x0

    .line 415
    .local v8, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 416
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v8, v4}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 561
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    .end local v13           #i:I
    .end local v14           #msgCnt:I
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v18           #text:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 436
    :cond_6
    const/16 v16, 0x0

    .line 437
    .local v16, separate:Z
    if-eqz p6, :cond_7

    const-string/jumbo v4, "separate_msg"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 439
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v16, :cond_8

    .line 442
    :try_start_0
    const-string v4, "SmsManager"

    const-string v5, "General sendMultipartText"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 444
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 445
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 452
    :cond_8
    const-string v4, "SmsManager"

    const-string v5, "Sprint rule, separate to separate ones"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 454
    .local v17, size:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 455
    const/4 v8, 0x0

    .line 456
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 457
    .local v9, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v13, :cond_9

    .line 458
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 460
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v13, :cond_a

    .line 461
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 466
    .restart local v9       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_a
    const-string v7, ""

    .line 468
    .local v7, body:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #body:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 475
    .restart local v7       #body:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 478
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 454
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 481
    :cond_b
    const/4 v11, 0x0

    .line 482
    .local v11, bFirstOfAll:Z
    const/4 v12, 0x0

    .line 484
    .local v12, bLastOfAll:Z
    if-eqz p6, :cond_c

    .line 485
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 486
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 488
    const/4 v4, 0x1

    if-ne v11, v4, :cond_10

    const/4 v4, 0x1

    if-ne v12, v4, :cond_10

    .line 489
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 490
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 514
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 492
    :cond_d
    if-nez v13, :cond_e

    .line 493
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 495
    :cond_e
    add-int/lit8 v4, v17, -0x1

    if-ne v13, v4, :cond_f

    .line 496
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 497
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 499
    :cond_f
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 502
    :cond_10
    if-nez v13, :cond_11

    const/4 v4, 0x1

    if-ne v11, v4, :cond_11

    .line 503
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 505
    :cond_11
    add-int/lit8 v4, v17, -0x1

    if-ne v13, v4, :cond_12

    const/4 v4, 0x1

    if-ne v12, v4, :cond_12

    .line 506
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 509
    :cond_12
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4
.end method

.method public sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 13
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
    .line 1357
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1360
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 1361
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v10

    .line 1367
    .local v10, bsupportEMS:Z
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1368
    const/4 v10, 0x0

    .line 1371
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    if-ne v10, v2, :cond_5

    .line 1374
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1375
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1376
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 1383
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1384
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_4

    .line 1385
    const/4 v6, 0x0

    .line 1386
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1387
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_6

    .line 1388
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1390
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_7

    .line 1391
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1394
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    const-string v5, ""

    .line 1395
    .local v5, body:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #body:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1398
    .restart local v5       #body:Ljava/lang/String;
    if-eqz p6, :cond_8

    const/4 v2, 0x1

    if-le v12, v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v2, v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1399
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1400
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1403
    invoke-virtual/range {v2 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V

    .line 1384
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1379
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #i:I
    .end local v12           #size:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 122
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 24
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 189
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_0
    const/4 v8, 0x0

    .line 203
    .local v8, header:[B
    const/4 v9, -0x1

    .line 204
    .local v9, nli:I
    const/4 v15, 0x0

    .line 205
    .local v15, bFirstOfAll:Z
    const/16 v16, 0x0

    .line 206
    .local v16, bLastOfAll:Z
    if-eqz p6, :cond_1

    .line 207
    const-string v4, "NLI"

    const/4 v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 208
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 209
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 212
    :cond_1
    const/4 v4, -0x1

    if-eq v9, v4, :cond_4

    .line 214
    const/4 v4, 0x1

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 215
    .local v19, data:[B
    const/4 v4, 0x0

    int-to-byte v5, v9

    aput-byte v5, v19, v4

    .line 216
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 218
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 220
    .local v21, eltSingle:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0xe

    if-eq v9, v4, :cond_2

    .line 221
    const/16 v4, 0x24

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 222
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 223
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    const/4 v4, 0x3

    if-ne v9, v4, :cond_3

    .line 227
    new-instance v20, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 228
    .local v20, eltLocking:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0x25

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 229
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 230
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v20           #eltLocking:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    .line 242
    .end local v19           #data:[B
    .end local v21           #eltSingle:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 267
    :goto_0
    return-void

    .line 248
    :cond_5
    if-eqz p5, :cond_7

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v9}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v22

    .line 252
    .local v22, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 254
    if-nez p6, :cond_6

    .line 255
    new-instance p6, Landroid/os/Bundle;

    .end local p6
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 256
    .restart local p6
    :cond_6
    const-string v4, "DEST_ADDRESS"

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p1

    invoke-direct/range {v10 .. v18}, Landroid/telephony/SmsManager;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v22           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    .restart local v22       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_8
    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p1

    invoke-direct/range {v10 .. v17}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"
    .parameter "phoneType"

    .prologue
    .line 1288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1299
    :cond_0
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1300
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 1301
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1961
    const/4 v0, 0x0

    .line 1963
    .local v0, response:I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1964
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1965
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setBCSMS(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1970
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1967
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setExtIccSmsPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1578
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1579
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1580
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setExtIccSmsPhoneType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1582
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 1827
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1828
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1829
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setSMSC(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1831
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "phonetype"

    .prologue
    .line 2034
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2035
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2036
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setSMSCExt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2038
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setTestBCSMS(II)I
    .locals 3
    .parameter "kddiTestData"
    .parameter "makerData"

    .prologue
    .line 1991
    const/4 v0, 0x0

    .line 1993
    .local v0, response:I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1994
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1995
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setTestBCSMS(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2000
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1997
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public syncCmasServiceTable()Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 1842
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1844
    .local v2, bundle:Landroid/os/Bundle;
    const-string v14, "SmsManager"

    const-string/jumbo v15, "syncCmasServiceTable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceNumber()I

    move-result v11

    .line 1846
    .local v11, mBCSMSServiceNumber:I
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_0

    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getServiceNumber: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_0
    if-gtz v11, :cond_1

    .line 1848
    const-string v14, "SmsManager"

    const-string v15, "Cannot get BCSMS service number"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const/4 v2, 0x0

    .line 1900
    .end local v2           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1852
    .restart local v2       #bundle:Landroid/os/Bundle;
    :cond_1
    new-array v10, v11, [I

    .line 1853
    .local v10, mBCSMSServiceID:[I
    new-array v7, v11, [I

    .line 1854
    .local v7, mBCSMSLanguage:[I
    new-array v9, v11, [I

    .line 1855
    .local v9, mBCSMSSelect:[I
    new-array v4, v11, [I

    .line 1856
    .local v4, mBCSMSAlert:[I
    new-array v8, v11, [I

    .line 1857
    .local v8, mBCSMSMaxMessages:[I
    new-array v6, v11, [I

    .line 1858
    .local v6, mBCSMSLabelEncode:[I
    new-array v5, v11, [Ljava/lang/String;

    .line 1860
    .local v5, mBCSMSLabel:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 1861
    .local v1, bErr:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    if-ge v3, v11, :cond_3

    .line 1862
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v12

    .line 1863
    .local v12, serviceEntry:[I
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v13

    .line 1866
    .local v13, serviceLabel:Landroid/os/Bundle;
    if-eqz v12, :cond_2

    array-length v14, v12

    const/4 v15, 0x6

    if-lt v14, v15, :cond_2

    if-nez v13, :cond_4

    .line 1868
    :cond_2
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get BCSMS fail. entry> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", label> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v1, 0x0

    .line 1891
    .end local v12           #serviceEntry:[I
    .end local v13           #serviceLabel:Landroid/os/Bundle;
    :cond_3
    if-nez v1, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 1873
    .restart local v12       #serviceEntry:[I
    .restart local v13       #serviceLabel:Landroid/os/Bundle;
    :cond_4
    const/4 v14, 0x1

    aget v14, v12, v14

    aput v14, v10, v3

    .line 1874
    const/4 v14, 0x2

    aget v14, v12, v14

    aput v14, v7, v3

    .line 1875
    const/4 v14, 0x3

    aget v14, v12, v14

    aput v14, v9, v3

    .line 1876
    const/4 v14, 0x4

    aget v14, v12, v14

    aput v14, v4, v3

    .line 1877
    const/4 v14, 0x5

    aget v14, v12, v14

    aput v14, v8, v3

    .line 1878
    const-string v14, "label_encode"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v3

    .line 1879
    const-string v14, "label"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v3

    .line 1881
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_5

    .line 1882
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSServiceID["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v10, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLanguage["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v7, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSSelect["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v9, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSAlert["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v4, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSMaxMessages["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v8, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLabelEncode["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v6, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLabel["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1892
    .end local v12           #serviceEntry:[I
    .end local v13           #serviceLabel:Landroid/os/Bundle;
    :cond_6
    const-string/jumbo v14, "service_number"

    invoke-virtual {v2, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1893
    const-string/jumbo v14, "service_id"

    invoke-virtual {v2, v14, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1894
    const-string v14, "language"

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1895
    const-string/jumbo v14, "select"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1896
    const-string v14, "alert"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1897
    const-string/jumbo v14, "max_messages"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1898
    const-string v14, "label_encode"

    invoke-virtual {v2, v14, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1899
    const-string v14, "label"

    invoke-virtual {v2, v14, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIccVZWLTE(II[B)Z

    move-result v0

    .line 1011
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIccDefault(II[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIcc(ZII[B)Z
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 1040
    const/4 v2, 0x0

    .line 1043
    .local v2, success:Z
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1044
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1045
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithType(ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1056
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get NullPointerException in updateMessageOnIcc(isCdmaFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1047
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public updateMessageOnIccDefault(II[B)Z
    .locals 5
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 1019
    const/4 v2, 0x0

    .line 1022
    .local v2, success:Z
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1023
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1024
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1035
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in updateMessageOnIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1026
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public updateMessageOnIccExt(II[BI)Z
    .locals 3
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 1535
    const/4 v1, 0x0

    .line 1538
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1539
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1540
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfExt(II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1546
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1542
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIccVZWLTE(II[B)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    .line 982
    const-string v1, "gsm.vzw.sms.format"

    const-string v2, "3gpp2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, sFormat:Ljava/lang/String;
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 985
    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    move-result v1

    .line 987
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    move-result v1

    goto :goto_0
.end method

.method public updateNvItem()V
    .locals 2

    .prologue
    .line 1810
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1811
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1812
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->updateNvItem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1814
    :catch_0
    move-exception v1

    goto :goto_0
.end method
