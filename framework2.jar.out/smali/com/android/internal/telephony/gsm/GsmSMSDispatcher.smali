.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final DCS_216:I = 0xd8

.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final PID_65:I = 0x41

.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

.field private mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field protected mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 1229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 114
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "type"
    .parameter "wapPush"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    .line 1229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    return-void
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 19
    .parameter "ar"

    .prologue
    .line 1238
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1254
    .local v16, receivedPdu:[B
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1255
    .local v6, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v17, "gsm.operator.numeric"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1256
    .local v15, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1257
    .local v2, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 1258
    .local v10, lac:I
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 1261
    .local v3, cid:I
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1273
    :pswitch_0
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v11, location:Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v13

    .line 1279
    .local v13, pageCount:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v13, v0, :cond_5

    .line 1281
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v4, v6, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 1284
    .local v4, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    .line 1286
    .local v14, pdus:[[B
    if-nez v14, :cond_0

    .line 1289
    new-array v14, v13, [[B

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    aput-object v16, v14, v17

    .line 1297
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 1298
    aget-object v17, v14, v7

    if-nez v17, :cond_2

    .line 1330
    .end local v2           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v3           #cid:I
    .end local v4           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v6           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v7           #i:I
    .end local v10           #lac:I
    .end local v11           #location:Landroid/telephony/SmsCbLocation;
    .end local v13           #pageCount:I
    .end local v14           #pdus:[[B
    .end local v15           #plmn:Ljava/lang/String;
    .end local v16           #receivedPdu:[B
    :cond_1
    :goto_2
    return-void

    .line 1263
    .restart local v2       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v3       #cid:I
    .restart local v6       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10       #lac:I
    .restart local v15       #plmn:Ljava/lang/String;
    .restart local v16       #receivedPdu:[B
    :pswitch_1
    new-instance v11, Landroid/telephony/SmsCbLocation;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-direct {v11, v15, v10, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1264
    .restart local v11       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 1268
    .end local v11           #location:Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15, v10, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1269
    .restart local v11       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 1297
    .restart local v4       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v7       #i:I
    .restart local v13       #pageCount:I
    .restart local v14       #pdus:[[B
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1305
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    .end local v4           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v7           #i:I
    :goto_3
    invoke-static {v6, v11, v14}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v12

    .line 1313
    .local v12, message:Landroid/telephony/SmsCbMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1320
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1321
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 1323
    .local v8, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v8, v15, v10, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1324
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1327
    .end local v2           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v3           #cid:I
    .end local v6           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v10           #lac:I
    .end local v11           #location:Landroid/telephony/SmsCbLocation;
    .end local v12           #message:Landroid/telephony/SmsCbMessage;
    .end local v13           #pageCount:I
    .end local v14           #pdus:[[B
    .end local v15           #plmn:Ljava/lang/String;
    .end local v16           #receivedPdu:[B
    :catch_0
    move-exception v5

    .line 1328
    .local v5, e:Ljava/lang/RuntimeException;
    const-string v17, "GSM"

    const-string v18, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1308
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v2       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v3       #cid:I
    .restart local v6       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10       #lac:I
    .restart local v11       #location:Landroid/telephony/SmsCbLocation;
    .restart local v13       #pageCount:I
    .restart local v15       #plmn:Ljava/lang/String;
    .restart local v16       #receivedPdu:[B
    :cond_5
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    new-array v14, v0, [[B

    .line 1309
    .restart local v14       #pdus:[[B
    const/16 v17, 0x0

    aput-object v16, v14, v17
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 4
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1460
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify To Email signal. Action> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1464
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1166
    packed-switch p0, :pswitch_data_0

    .line 1175
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 1170
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1172
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendDataVZWLTE(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 444
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 448
    .local v9, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "DEST_ADDRESS"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz v9, :cond_1

    .line 453
    iget-object v1, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 458
    :goto_1
    return-void

    .line 444
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v9       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendDataVZWLTE(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
    .line 799
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 800
    return-void
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 26
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
    .line 831
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v24, 0x1

    .line 832
    .local v24, ss:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    .line 839
    :goto_0
    if-eqz v24, :cond_2

    .line 840
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_d

    .line 841
    const/4 v4, 0x0

    .line 842
    .local v4, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_0

    .line 843
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    check-cast v4, Landroid/app/PendingIntent;

    .line 845
    .restart local v4       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 846
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 840
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 836
    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v2, "GSM"

    const-string v5, "mPhone or gerServiceState is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .line 854
    .local v21, refNumber:I
    const/4 v11, 0x1

    .line 856
    .local v11, is7bitOnly:Z
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 857
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    move/from16 v0, p6

    invoke-static {v2, v5, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v22

    .line 858
    .local v22, septetCount:I
    const/16 v2, 0xff

    move/from16 v0, v22

    if-le v0, v2, :cond_9

    .line 859
    new-instance v2, Lcom/android/internal/telephony/EncodeException;

    const-string v5, "error"

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v22           #septetCount:I
    :catch_0
    move-exception v16

    .line 864
    .local v16, e:Lcom/android/internal/telephony/EncodeException;
    const/4 v11, 0x0

    .line 868
    .end local v16           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_3
    const/16 v17, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, msgCount:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 869
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 870
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 871
    add-int/lit8 v2, v17, 0x1

    iput v2, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 872
    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 873
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 874
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 875
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v23

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 878
    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_5

    .line 879
    const/4 v2, 0x1

    new-array v14, v2, [B

    .line 880
    .local v14, data:[B
    const/4 v2, 0x0

    move/from16 v0, p6

    int-to-byte v5, v0

    aput-byte v5, v14, v2

    .line 881
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 883
    .local v18, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v2, 0xe

    move/from16 v0, p6

    if-eq v0, v2, :cond_4

    .line 884
    const/16 v2, 0x24

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 885
    move-object/from16 v0, v18

    iput-object v14, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 886
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_4
    const/4 v2, 0x3

    move/from16 v0, p6

    if-ne v0, v2, :cond_5

    .line 890
    const/16 v2, 0x25

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 891
    move-object/from16 v0, v18

    iput-object v14, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 892
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v14           #data:[B
    .end local v18           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const/4 v4, 0x0

    .line 898
    .restart local v4       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_6

    .line 899
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    check-cast v4, Landroid/app/PendingIntent;

    .line 902
    .restart local v4       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v15, 0x0

    .line 903
    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_7

    .line 904
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 912
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v10, p6

    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 916
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 917
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "smsc"

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v2, "pdu"

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v2, "destaddr"

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v6, ""

    const-string v7, ""

    move-object/from16 v2, p0

    move-object v5, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 929
    .restart local v25       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 930
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 931
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 934
    :cond_8
    if-nez v17, :cond_b

    .line 935
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSmsExtendMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 868
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 856
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #msgCount:I
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v22       #septetCount:I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 912
    .end local v22           #septetCount:I
    .restart local v4       #sentIntent:Landroid/app/PendingIntent;
    .restart local v12       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v19       #msgCount:I
    .restart local v23       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 936
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v25       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_b
    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_c

    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    .line 937
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_5

    .line 939
    :cond_c
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_5

    .line 943
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    .end local v11           #is7bitOnly:Z
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #msgCount:I
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v21           #refNumber:I
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_d
    return-void
.end method

.method private sendSmsExtendMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkInSegmentToRIL(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1075
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1077
    .local v0, map:Ljava/util/HashMap;
    const-string v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 1078
    .local v3, smsc:[B
    const-string v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 1080
    .local v1, pdu:[B
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1083
    .local v2, reply:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1085
    :cond_0
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSmsExtendMore(), mImsRadioTech = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isImsAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1087
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1095
    :goto_0
    return-void

    .line 1093
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSExtendMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendTextVZWLTE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 11
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 489
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 493
    .local v10, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p6, :cond_0

    .line 494
    new-instance p6, Landroid/os/Bundle;

    .end local p6
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 495
    .restart local p6
    :cond_0
    const-string v1, "DEST_ADDRESS"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    if-eqz v10, :cond_2

    .line 499
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v3, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 504
    :goto_1
    return-void

    .line 489
    .end local v10           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 502
    .restart local v10       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v1, "GSM"

    const-string v2, "GsmSMSDispatcher.sendTextVZWLTE(): getSubmitPdu() returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 4
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1475
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify To app. Action> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1479
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1481
    return-void
.end method

.method public acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1152
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1153
    .local v0, isKddi:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1154
    if-nez p1, :cond_2

    .line 1155
    const/16 p2, 0x16

    .line 1162
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    .end local p2
    :goto_2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1163
    return-void

    .line 1152
    .end local v0           #isKddi:Z
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1157
    .restart local v0       #isKddi:Z
    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 1162
    :cond_3
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result p2

    goto :goto_2
.end method

.method public calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1143
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 13
    .parameter "smsb"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v10, "GSM"

    const-string v11, "dispatchMessage: message is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v10, 0x2

    .line 412
    :goto_0
    return v10

    .line 281
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    move-object v7, p1

    .line 282
    check-cast v7, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 284
    .local v7, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 287
    const-string v10, "GSM"

    const-string v11, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v10, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v10, :cond_2

    .line 293
    const-string v10, "GSM"

    const-string v11, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v10, 0x1

    goto :goto_0

    .line 300
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 301
    const/4 v10, 0x1

    goto :goto_0

    .line 306
    :cond_3
    const/4 v1, 0x0

    .line 307
    .local v1, handled:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 309
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x1

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMwiCounter()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 310
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 312
    const-string v11, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v1, :cond_6

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 338
    const/4 v1, 0x1

    .line 340
    const-string v10, "GSM"

    const-string v11, "Received DCS 0xCx MWI SMS but not voice mail indicator, drop it"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_5
    if-eqz v1, :cond_9

    .line 346
    const/4 v10, 0x1

    goto :goto_0

    .line 312
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 314
    :cond_7
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 315
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 316
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 318
    const-string v11, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v1, :cond_8

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v1, :cond_4

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa9

    if-ne v10, v11, :cond_4

    .line 324
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v6

    .line 325
    .local v6, pid:I
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x41

    if-ne v6, v10, :cond_4

    .line 327
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "com.htc.mms.MWICLEAR_RECEIVE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 318
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #pid:I
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 349
    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEasAllowSms()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v10

    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v10, v11, :cond_b

    .line 353
    const/4 v10, 0x3

    goto/16 :goto_0

    .line 356
    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 358
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v8, :cond_c

    iget-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v10, :cond_13

    .line 360
    :cond_c
    const/4 v10, 0x1

    new-array v5, v10, [[B

    .line 361
    .local v5, pdus:[[B
    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v11

    aput-object v11, v5, v10

    .line 363
    if-eqz v8, :cond_e

    iget-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v10, :cond_e

    .line 364
    iget-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v11, 0xb84

    if-ne v10, v11, :cond_d

    .line 365
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v10

    goto/16 :goto_0

    .line 368
    :cond_d
    iget-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 409
    :goto_4
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 374
    :cond_e
    const/4 v4, 0x0

    .line 375
    .local v4, isLBSMessage:Z
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xa8

    if-ne v10, v11, :cond_11

    .line 377
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, str:Ljava/lang/String;
    if-eqz v9, :cond_11

    .line 381
    const-string v10, "//VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "//VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_f

    const/4 v0, 0x1

    .line 382
    .local v0, beVZWstarted:Z
    :goto_5
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check DirectedSMS V12 old format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkVZWDirectedSMSV12(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 385
    const-string v10, "GSM"

    const-string v11, "Directed SMS v12 true, return handled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 381
    .end local v0           #beVZWstarted:Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 387
    .restart local v0       #beVZWstarted:Z
    :cond_10
    if-eqz v0, :cond_11

    .line 388
    const/4 v4, 0x1

    .line 389
    const-string v10, "GSM"

    const-string v11, "SMSV12dispatch/ isLBSMessage"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0           #beVZWstarted:Z
    .end local v9           #str:Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v3

    .line 400
    .local v3, isEVDOMessage:Z
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x51

    if-ne v10, v11, :cond_12

    .line 401
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->kddiDispatchPdus([[BLcom/android/internal/telephony/gsm/SmsMessage;)V

    goto :goto_4

    .line 403
    :cond_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v10

    invoke-virtual {p0, v10, v5, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus(I[[BZZ)V

    goto :goto_4

    .line 412
    .end local v3           #isEVDOMessage:Z
    .end local v4           #isLBSMessage:Z
    .end local v5           #pdus:[[B
    :cond_13
    iget-object v10, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v11, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v10

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 146
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "3gpp"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 179
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    .line 194
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isPendingMsgRepoEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->htcHandleGsmStatusReport(Landroid/os/AsyncResult;)V

    .line 226
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 200
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 202
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 203
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 204
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 205
    .local v4, messageRef:I
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleStatusReport: messageRef> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 207
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 208
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 210
    const/16 v9, 0x22

    if-eq v7, v9, :cond_1

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    .line 211
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 213
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 215
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v12, v12, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 206
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method protected htcHandleGsmStatusReport(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    .line 230
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 231
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v8

    .line 232
    .local v8, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v8, :cond_2

    .line 233
    iget v4, v8, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 234
    .local v4, messageRef:I
    const/4 v6, -0x1

    .line 235
    .local v6, pos:I
    const/4 v9, 0x0

    .line 237
    .local v9, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v10

    const/16 v11, 0x22

    if-eq v10, v11, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v10

    const/16 v11, 0x30

    if-eq v10, v11, :cond_3

    const/4 v7, 0x1

    .line 238
    .local v7, remove:Z
    :goto_0
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "htcHandleStatusReport: messageRef> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 240
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    check-cast v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 241
    .restart local v9       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v10, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v10, v4, :cond_4

    .line 242
    move v6, v2

    .line 248
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v1, fillIn:Landroid/content/Intent;
    const-string v10, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const-string v10, "format"

    const-string v11, "3gpp"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const/4 v10, -0x1

    if-le v6, v10, :cond_5

    .line 252
    iget-object v3, v9, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 254
    .local v3, intent:Landroid/app/PendingIntent;
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v3           #intent:Landroid/app/PendingIntent;
    :goto_2
    if-eqz v7, :cond_2

    .line 261
    const/4 v10, -0x1

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 266
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v4           #messageRef:I
    .end local v6           #pos:I
    .end local v7           #remove:Z
    .end local v9           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 267
    return-void

    .line 237
    .restart local v4       #messageRef:I
    .restart local v6       #pos:I
    .restart local v9       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 239
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v7       #remove:Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    .restart local v1       #fillIn:Landroid/content/Intent;
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_2

    .line 255
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method protected htcSendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;[B[BLandroid/os/Message;ZZ)Z
    .locals 8
    .parameter "tracker"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "reply"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 991
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 992
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms(), mImsRadioTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    aget-byte v1, v1, v7

    if-nez v1, :cond_1

    .line 995
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    if-le v1, v7, :cond_1

    .line 996
    array-length v1, p3

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 997
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    array-length v2, p3

    invoke-static {p3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1007
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 1014
    .local v6, ss:I
    const-string v1, "gsm.volte.ims.emulate.no_radio"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v7, :cond_3

    .line 1015
    const/4 v6, 0x1

    .line 1021
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .end local v6           #ss:I
    :cond_4
    :goto_0
    move v0, v7

    .line 1065
    :cond_5
    return v0

    .line 1034
    .restart local v6       #ss:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    goto :goto_0

    .line 1036
    .end local v6           #ss:I
    :cond_7
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eq v0, v7, :cond_8

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1038
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    goto :goto_0

    .line 1043
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1046
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms(), mImsRadioTech = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isImsAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1057
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    goto :goto_0
.end method

.method public kddiBroadcastEmailSignal([[B)V
    .locals 5
    .parameter "pdus"

    .prologue
    .line 1445
    const-string v1, "GSM"

    const-string v2, "kddiNotifySmsToEmailSignal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiEmailSignalAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiEmailSignalPermission()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1449
    .local v0, accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 1450
    return-void
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 9
    .parameter "pdus"
    .parameter "sms"

    .prologue
    const/4 v8, 0x1

    .line 1342
    const/4 v3, 0x0

    .line 1344
    .local v3, isSendAckSkip:Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v4, :cond_0

    .line 1345
    new-instance v4, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const v6, 0x4060001

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    .line 1350
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v4, :cond_1

    .line 1351
    new-instance v4, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 1356
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(I[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1435
    :goto_0
    return-void

    .line 1361
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->KddiGetMessageEncoding()I

    move-result v1

    .line 1362
    .local v1, encoding:I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Msgencoding> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v4, 0x2

    if-ne v4, v1, :cond_6

    .line 1365
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .line 1372
    .local v0, accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1378
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1379
    const/4 v3, 0x1

    .line 1384
    :cond_3
    if-nez v3, :cond_4

    .line 1387
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1408
    :cond_4
    :goto_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch discard? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiIsDiscard()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is it special cmail? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiIsDiscard()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1413
    if-ne v3, v8, :cond_7

    .line 1414
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus(I[[B)V

    .line 1428
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1431
    .end local v0           #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v1           #encoding:I
    :catch_0
    move-exception v2

    .line 1433
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v4, "GSM"

    const-string v5, "judgeSmsType() failed to create SmsAccessory "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1368
    .end local v2           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #encoding:I
    :cond_6
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #accessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 1389
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_2

    .line 1393
    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_2

    .line 1398
    :pswitch_2
    iget v4, p2, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mAckWaitMessageId:I

    goto/16 :goto_2

    .line 1416
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiGetSmsTypeId()I

    move-result v4

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_8

    .line 1417
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->kddiBroadcastEmailSignal([[B)V

    goto :goto_3

    .line 1419
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v5, 0x0

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendDataVZWLTE(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 434
    .local v8, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_2

    .line 435
    iget-object v1, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move v6, v5

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0

    .end local v8           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    move v0, v5

    .line 432
    goto :goto_1

    .line 437
    .restart local v8       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 26
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
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

    .prologue
    .line 525
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v16, 0x0

    .line 526
    .local v16, bFirstSms:Z
    const/16 v17, 0x0

    .line 527
    .local v17, bLastSms:Z
    if-eqz p7, :cond_0

    .line 528
    const-string v3, "FIRST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 529
    const-string v3, "LAST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 532
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    .line 533
    .local v24, refNumber:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v20, v0

    .line 535
    .local v20, concatedDate:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 536
    .local v22, msgCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 537
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 538
    .local v18, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 539
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 540
    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 541
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 542
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 543
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 546
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v25

    .line 549
    .local v25, smsHeaderData:[B
    const/4 v10, 0x0

    .line 550
    .local v10, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_1

    .line 551
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 554
    .restart local v10       #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v11, 0x0

    .line 555
    .local v11, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_2

    .line 556
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 560
    .restart local v11       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_2
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 561
    .local v19, concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 562
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 563
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 565
    const-string v3, "Concate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertRawTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    const/4 v4, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    #invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/ConcatedUtil;->insertRawTable(ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader$ConcatRef;I)I

    .line 569
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v14, concateBundle:Landroid/os/Bundle;
    const-string v3, "REFERENCE_NUMBER"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    const-string v3, "COUNT"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string v3, "SEQUENCE"

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v3, "DESTADDR"

    move-object/from16 v0, p1

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v3, "DATE"

    move/from16 v0, v20

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string v3, "DEST_ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v14, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_3

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v23

    .line 583
    .local v23, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p7, :cond_a

    .line 584
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_7

    .line 585
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    .line 586
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 536
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 580
    .end local v23           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 587
    .restart local v23       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    if-nez v21, :cond_5

    .line 588
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 589
    :cond_5
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    .line 590
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 592
    :cond_6
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 593
    :cond_7
    if-nez v21, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    .line 594
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 595
    :cond_8
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_9

    .line 596
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 598
    :cond_9
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 600
    :cond_a
    if-nez v21, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_b

    .line 601
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 602
    :cond_b
    if-nez v21, :cond_c

    .line 603
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 604
    :cond_c
    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_d

    .line 605
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 607
    :cond_d
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 610
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    .end local v11           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v14           #concateBundle:Landroid/os/Bundle;
    .end local v18           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v19           #concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v23           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #smsHeaderData:[B
    :cond_e
    return-void
.end method

.method public sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 1113
    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1115
    .local v7, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1116
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1118
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1119
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1120
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1123
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, -0x1

    .line 1124
    .local v6, nli:I
    const-string v0, "nli"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    .line 1129
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1133
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
    .line 510
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

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 511
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 35
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
    .line 627
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, -0x1

    .line 628
    .local v8, nli:I
    const/16 v19, 0x0

    .line 629
    .local v19, bFirstSms:Z
    const/16 v20, 0x0

    .line 630
    .local v20, bLastSms:Z
    if-eqz p6, :cond_0

    .line 631
    const-string v3, "NLI"

    const/4 v4, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 632
    const-string v3, "FIRST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 633
    const-string v3, "LAST_SMS"

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 638
    :cond_0
    const/4 v9, 0x1

    .line 640
    .local v9, is7bitOnly:Z
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_1

    .line 641
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v3, v4, v8}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v33

    .line 642
    .local v33, septetCount:I
    const/16 v3, 0xff

    move/from16 v0, v33

    if-le v0, v3, :cond_4

    .line 643
    new-instance v3, Lcom/android/internal/telephony/EncodeException;

    const-string v4, "error"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v33           #septetCount:I
    :catch_0
    move-exception v26

    .line 648
    .local v26, e:Lcom/android/internal/telephony/EncodeException;
    const/4 v9, 0x0

    .line 652
    .end local v26           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v32, v0

    .line 653
    .local v32, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 654
    .local v30, msgCount:I
    const/16 v27, 0x0

    .line 655
    .local v27, encoding:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v23, v0

    .line 657
    .local v23, concatedDate:I
    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 658
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v25

    .line 659
    .local v25, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v27

    if-eq v0, v3, :cond_3

    if-eqz v27, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    .line 662
    :cond_2
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v27, v0

    .line 657
    :cond_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 640
    .end local v23           #concatedDate:I
    .end local v25           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v27           #encoding:I
    .end local v30           #msgCount:I
    .end local v32           #refNumber:I
    .restart local v33       #septetCount:I
    :cond_4
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 666
    .end local v33           #septetCount:I
    .restart local v23       #concatedDate:I
    .restart local v27       #encoding:I
    .restart local v30       #msgCount:I
    .restart local v32       #refNumber:I
    :cond_5
    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    .line 667
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 668
    .local v21, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 669
    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 670
    move/from16 v0, v30

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 677
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 678
    new-instance v34, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v34 .. v34}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 679
    .local v34, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 682
    const/4 v3, -0x1

    if-eq v8, v3, :cond_7

    .line 683
    const/4 v3, 0x1

    new-array v0, v3, [B

    move-object/from16 v24, v0

    .line 684
    .local v24, data:[B
    const/4 v3, 0x0

    int-to-byte v4, v8

    aput-byte v4, v24, v3

    .line 685
    new-instance v29, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v29 .. v29}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 687
    .local v29, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0xe

    if-eq v8, v3, :cond_6

    .line 688
    const/16 v3, 0x24

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 689
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 690
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_6
    const/4 v3, 0x3

    if-ne v8, v3, :cond_7

    .line 694
    new-instance v29, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v29           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct/range {v29 .. v29}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 695
    .restart local v29       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0x25

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 696
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 697
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v24           #data:[B
    .end local v29           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_7
    const/4 v13, 0x0

    .line 703
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_8

    .line 704
    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 708
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_8
    new-instance v22, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 709
    .local v22, concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 710
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 711
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 713
    const-string v3, "Concate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertRawTable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    const/4 v4, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    #invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/ConcatedUtil;->insertRawTable(ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader$ConcatRef;I)I

    .line 717
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v17, concateBundle:Landroid/os/Bundle;
    const-string v3, "REFERENCE_NUMBER"

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    const-string v3, "COUNT"

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    const-string v3, "SEQUENCE"

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string v3, "DESTADDR"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v3, "DATE"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v3, "DEST_ADDRESS"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v14, 0x0

    .line 729
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_9

    .line 730
    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 734
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_9
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v14, :cond_a

    const/4 v6, 0x1

    :goto_3
    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v31

    .line 739
    .local v31, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p6, :cond_11

    .line 740
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_e

    .line 741
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_b

    .line 742
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 666
    :goto_4
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 734
    .end local v31           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 743
    .restart local v31       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_b
    if-nez v28, :cond_c

    .line 744
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 745
    :cond_c
    add-int/lit8 v3, v30, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_d

    .line 746
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 748
    :cond_d
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 749
    :cond_e
    if-nez v28, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_f

    .line 750
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 751
    :cond_f
    add-int/lit8 v3, v30, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_10

    .line 752
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    .line 754
    :cond_10
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 756
    :cond_11
    if-nez v28, :cond_12

    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_12

    .line 757
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 758
    :cond_12
    if-nez v28, :cond_13

    .line 759
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 760
    :cond_13
    add-int/lit8 v3, v30, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_14

    .line 761
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 763
    :cond_14
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 767
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v17           #concateBundle:Landroid/os/Bundle;
    .end local v21           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v22           #concatRef1:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v31           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v34           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_15
    return-void
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 12
    .parameter "tracker"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    const/4 v5, 0x1

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkInSegmentToRIL(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 956
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 958
    .local v11, map:Ljava/util/HashMap;
    const-string v0, "smsc"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    .line 959
    .local v2, smsc:[B
    const-string v0, "pdu"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 962
    .local v3, pdu:[B
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne v0, v5, :cond_0

    .line 963
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    .line 965
    const/4 v0, 0x0

    aget-byte v1, v3, v0

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 969
    :cond_0
    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    .line 971
    aget-byte v0, v3, v5

    iget v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v5

    .line 975
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, reply:Landroid/os/Message;
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 977
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->htcSendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;[B[BLandroid/os/Message;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    :goto_0
    return-void

    .line 982
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    move v9, p2

    move v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 472
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendTextVZWLTE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 484
    :goto_0
    return-void

    .line 477
    :cond_0
    if-eqz p5, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 479
    .local v8, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_2

    .line 480
    iget-object v1, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move v6, v5

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0

    .end local v8           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    move v0, v5

    .line 477
    goto :goto_1

    .line 482
    .restart local v8       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
