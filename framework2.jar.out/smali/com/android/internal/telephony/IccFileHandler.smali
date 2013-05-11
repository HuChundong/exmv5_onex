.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field private static final COMMAND_STATUS:I = 0xf2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static DFPhonebookPath:Ljava/lang/String; = null

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_BINARY_SIZE_DONE_IMS:I = 0xf

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_ICC_DETAIL_STATUS:I = 0x32

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_DONE_IMS:I = 0x10

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0x33

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_READ_RECORD_DONE_IMS:I = 0x11

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mDestroyed:Z

.field protected final mParentCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3F007F105F3A"

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "7F105F3A"

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 151
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 605
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 0
    .parameter "efid"

    .prologue
    .line 1215
    return p1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    .line 157
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    const/4 v0, 0x0

    .line 1134
    sparse-switch p1, :sswitch_data_0

    .line 1149
    :cond_0
    :goto_0
    return-object v0

    .line 1142
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "7F10"

    goto :goto_0

    :cond_1
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1145
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3F00"

    goto :goto_0

    .line 1147
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "7F105F50"

    goto :goto_0

    :cond_2
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1134
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 23
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 249
    const/16 v2, 0x8

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 254
    .local v12, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v4, p1

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 279
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 269
    .local v5, newfileid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 272
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v15, p1

    move-object/from16 v22, v12

    invoke-interface/range {v13 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getIccCardAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 613
    const/16 v41, 0x0

    .line 625
    .local v41, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 628
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 629
    .local v31, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 630
    .local v38, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 631
    .local v42, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v41, v0

    .line 633
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 634
    .local v36, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_1

    .line 635
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v35

    .line 1114
    .local v35, exc:Ljava/lang/Exception;
    if-eqz v41, :cond_31

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1116
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 637
    .end local v35           #exc:Ljava/lang/Exception;
    .restart local v31       #ar:Landroid/os/AsyncResult;
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    .restart local v38       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 641
    const-string v3, "IccFileHandler:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() EVENT_READ_IMG_DONE efid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " recordNum="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " recordSize="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " msg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x33

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 652
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 653
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 654
    .restart local v38       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 655
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v41, v0

    .line 657
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 658
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_2

    .line 659
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 661
    :cond_2
    const-string v3, "IccFileHandler:"

    const-string v4, "handleMessage() EVENT_READ_IMG_RECORD_DONE success!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 670
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 671
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v41, v0

    .line 672
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 674
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 675
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_3

    .line 676
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 678
    :cond_3
    const/4 v3, 0x2

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    const-string v3, "IccFileHandler:"

    const-string v4, "handleMessage() EVENT_READ_ICON_DONE success!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 687
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 688
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 689
    .restart local v38       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 690
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v41, v0

    .line 692
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 693
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 697
    :cond_4
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 698
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_5

    .line 699
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 703
    :cond_5
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v33, v0

    .line 706
    .local v33, data:[B
    new-instance v37, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 707
    .local v37, iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v37, :cond_7

    move-object/from16 v0, v37

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_7

    .line 708
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 709
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 711
    :cond_6
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/IccFcp;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 712
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v40, v0

    .line 713
    .local v40, recordSize:[I
    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    aput v4, v40, v3

    .line 714
    const/4 v3, 0x1

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    aput v4, v40, v3

    .line 715
    const/4 v3, 0x2

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/internal/telephony/IccFcp;->numOfRecords:I

    aput v4, v40, v3

    .line 732
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 718
    .end local v40           #recordSize:[I
    :cond_7
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v33, v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v33, v4

    if-eq v3, v4, :cond_9

    .line 720
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 723
    :cond_9
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v40, v0

    .line 724
    .restart local v40       #recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v33, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v40, v3

    .line 725
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v33, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v7, 0x3

    aget-byte v7, v33, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    aput v4, v40, v3

    .line 727
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v40, v4

    const/4 v7, 0x0

    aget v7, v40, v7

    div-int/2addr v4, v7

    aput v4, v40, v3

    goto :goto_1

    .line 740
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v33           #data:[B
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v37           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v40           #recordSize:[I
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 741
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 742
    .restart local v38       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 743
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v41, v0

    .line 745
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 746
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 750
    :cond_a
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 752
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_b

    .line 753
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 757
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 760
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v33, v0

    .line 761
    .restart local v33       #data:[B
    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 762
    .local v15, fileid:I
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v39, v0

    .line 765
    .local v39, recordNum:I
    new-instance v37, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 766
    .restart local v37       #iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v37, :cond_e

    move-object/from16 v0, v37

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_e

    .line 769
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    .line 770
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 772
    :cond_c
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/IccFcp;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 774
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->numOfRecords:I

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 795
    :goto_2
    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_d

    .line 796
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v38

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 801
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DFID"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 802
    .local v34, dfid:I
    if-eqz v34, :cond_11

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3F00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 805
    .local v6, efPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 807
    .local v5, newfileid:I
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 808
    .local v12, readRecordResponse:Landroid/os/Message;
    new-instance v32, Landroid/os/Bundle;

    invoke-direct/range {v32 .. v32}, Landroid/os/Bundle;-><init>()V

    .line 809
    .local v32, bundle:Landroid/os/Bundle;
    const-string v3, "DFID"

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 777
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    .end local v12           #readRecordResponse:Landroid/os/Message;
    .end local v32           #bundle:Landroid/os/Bundle;
    .end local v34           #dfid:I
    :cond_e
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v33, v4

    if-eq v3, v4, :cond_f

    .line 778
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 781
    :cond_f
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v33, v4

    if-eq v3, v4, :cond_10

    .line 782
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 785
    :cond_10
    const/16 v3, 0xe

    aget-byte v3, v33, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 787
    const/4 v3, 0x2

    aget-byte v3, v33, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v33, v4

    and-int/lit16 v4, v4, 0xff

    add-int v19, v3, v4

    .line 790
    .local v19, size:I
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v19, v3

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    goto/16 :goto_2

    .line 816
    .end local v19           #size:I
    .restart local v34       #dfid:I
    :cond_11
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 818
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 819
    .restart local v6       #efPath:Ljava/lang/String;
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 820
    .restart local v5       #newfileid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move v15, v5

    move-object/from16 v16, v6

    invoke-interface/range {v13 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 826
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_16

    .line 828
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    const/16 v4, 0x6f04

    if-ne v3, v4, :cond_14

    .line 829
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/16 v4, 0x50

    if-le v3, v4, :cond_13

    .line 830
    const/16 v3, 0x50

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 832
    :cond_13
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_14

    .line 833
    const/16 v3, 0x14

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 837
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb2

    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v15           #fileid:I
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 845
    .restart local v15       #fileid:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb2

    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v15           #fileid:I
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 854
    .restart local v15       #fileid:I
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb2

    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v15           #fileid:I
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 861
    .restart local v15       #fileid:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb2

    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v15           #fileid:I
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v13 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 877
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v33           #data:[B
    .end local v34           #dfid:I
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v37           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v39           #recordNum:I
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 878
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v41, v0

    .line 879
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 881
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 882
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 886
    :cond_18
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 888
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_19

    .line 889
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 893
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 896
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v33, v0

    .line 898
    .restart local v33       #data:[B
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 901
    .restart local v15       #fileid:I
    new-instance v37, Lcom/android/internal/telephony/IccFcp;

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccFcp;-><init>([B)V

    .line 903
    .restart local v37       #iccFcp:Lcom/android/internal/telephony/IccFcp;
    if-eqz v37, :cond_1f

    move-object/from16 v0, v37

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v3, :cond_1f

    .line 904
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileId:I

    if-ne v3, v15, :cond_1a

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    .line 905
    :cond_1a
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 907
    :cond_1b
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    move/from16 v19, v0

    .line 924
    .restart local v19       #size:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    .line 925
    .local v16, filePath:Ljava/lang/String;
    move v5, v15

    .line 927
    .restart local v5       #newfileid:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x6f31

    if-ne v15, v3, :cond_1c

    .line 928
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 932
    :cond_1c
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_23

    .line 934
    const/16 v3, 0x6f02

    if-ne v15, v3, :cond_1d

    const/16 v3, 0x64

    move/from16 v0, v19

    if-le v0, v3, :cond_1d

    .line 935
    const/16 v19, 0x64

    .line 937
    :cond_1d
    const/16 v3, 0x6f03

    if-ne v15, v3, :cond_1e

    const/16 v3, 0x4b

    move/from16 v0, v19

    if-le v0, v3, :cond_1e

    .line 938
    const/16 v19, 0x4b

    .line 941
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 942
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v15, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 910
    .end local v5           #newfileid:I
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #size:I
    :cond_1f
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v33, v4

    if-eq v3, v4, :cond_20

    .line 911
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 914
    :cond_20
    const/16 v3, 0xd

    aget-byte v3, v33, v3

    if-eqz v3, :cond_21

    .line 915
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 918
    :cond_21
    const/4 v3, 0x2

    aget-byte v3, v33, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v33, v4

    and-int/lit16 v4, v4, 0xff

    add-int v19, v3, v4

    .restart local v19       #size:I
    goto/16 :goto_3

    .line 948
    .restart local v5       #newfileid:I
    .restart local v16       #filePath:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xb0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v15, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v13 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 957
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v15, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move/from16 v22, v15

    move/from16 v26, v19

    invoke-interface/range {v20 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 963
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v15, v4, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move/from16 v22, v5

    move-object/from16 v23, v16

    move/from16 v26, v19

    invoke-interface/range {v20 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 978
    .end local v5           #newfileid:I
    .end local v15           #fileid:I
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #size:I
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v33           #data:[B
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v37           #iccFcp:Lcom/android/internal/telephony/IccFcp;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 979
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 980
    .restart local v38       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 981
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v41, v0

    .line 983
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_25

    .line 984
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 988
    :cond_25
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 990
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_26

    .line 991
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 995
    :cond_26
    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_27

    .line 996
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 998
    :cond_27
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v38

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 1002
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_28

    .line 1003
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1006
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccFileHandler;->htcExceptionWhenDisposed()V

    .line 1010
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DFID"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 1011
    .restart local v34       #dfid:I
    if-eqz v34, :cond_29

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3F00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1014
    .restart local v6       #efPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 1016
    .restart local v5       #newfileid:I
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1017
    .restart local v12       #readRecordResponse:Landroid/os/Message;
    new-instance v32, Landroid/os/Bundle;

    invoke-direct/range {v32 .. v32}, Landroid/os/Bundle;-><init>()V

    .line 1018
    .restart local v32       #bundle:Landroid/os/Bundle;
    const-string v3, "DFID"

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1019
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1026
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    .end local v12           #readRecordResponse:Landroid/os/Message;
    .end local v32           #bundle:Landroid/os/Bundle;
    :cond_29
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1028
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 1029
    .restart local v6       #efPath:Ljava/lang/String;
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 1030
    .restart local v5       #newfileid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move/from16 v22, v5

    move-object/from16 v23, v6

    invoke-interface/range {v20 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1036
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2c

    .line 1038
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget-object v29, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    invoke-interface/range {v20 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1046
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    const/16 v3, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    invoke-interface/range {v20 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1055
    :cond_2c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    invoke-interface/range {v20 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1062
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-interface/range {v20 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1078
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v34           #dfid:I
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 1079
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v41, v0

    .line 1080
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 1082
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 1083
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1087
    :cond_2e
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v36

    .line 1089
    .restart local v36       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v36, :cond_2f

    .line 1090
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1094
    :cond_2f
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1100
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v36           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/AsyncResult;

    .line 1101
    .restart local v31       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v41, v0

    .line 1102
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/IccIoResult;

    .line 1104
    .restart local v42       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1105
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1108
    :cond_30
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1118
    .end local v31           #ar:Landroid/os/AsyncResult;
    .end local v42           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v35       #exc:Ljava/lang/Exception;
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_6
        0x32 -> :sswitch_8
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

.method protected htcExceptionWhenDisposed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/IccException;
        }
    .end annotation

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1226
    new-instance v0, Lcom/android/internal/telephony/IccException;

    const-string v1, "disposed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_0
    return-void
.end method

.method protected isCommonIccFile(I)Z
    .locals 1
    .parameter "efid"

    .prologue
    .line 1156
    sparse-switch p1, :sswitch_data_0

    .line 1162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1160
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1156
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f31 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3c -> :sswitch_0
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0xc0

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 216
    const/16 v0, 0x9

    new-instance v4, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v4, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 220
    .local v10, response:Landroid/os/Message;
    const/4 v0, 0x2

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, path:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 237
    :goto_1
    return-void

    .line 220
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    const-string v3, "img"

    goto :goto_0

    .line 232
    .restart local v3       #path:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v4, p1

    move-object v8, v7

    move-object v9, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 478
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 481
    .local v11, response:Landroid/os/Message;
    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4f20

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, path:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 495
    :goto_1
    return-void

    .line 481
    .end local v4           #path:Ljava/lang/String;
    :cond_0
    const-string v4, "img"

    goto :goto_0

    .line 491
    .restart local v4       #path:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object v10, v11

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 24
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 172
    const/4 v3, 0x6

    new-instance v4, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 177
    .local v13, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v5, p1

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 204
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v6

    .line 193
    .local v6, newfileid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 197
    .end local v6           #newfileid:I
    .end local v7           #efPath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, p1

    move-object/from16 v23, v13

    invoke-interface/range {v14 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "dfid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 384
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 386
    .local v9, response:Landroid/os/Message;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v10, bundle:Landroid/os/Bundle;
    const-string v0, "DFID"

    invoke-virtual {v10, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {v9, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3F00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, efPath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 392
    .local v2, newfileid:I
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    move v5, v4

    move v6, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 394
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 23
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 291
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 295
    .local v12, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v4, p1

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    :goto_0
    return-void

    .line 307
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 311
    .local v5, newfileid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 314
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v15, p1

    move-object/from16 v22, v12

    invoke-interface/range {v13 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 23
    .parameter "fileid"
    .parameter "filePath"
    .parameter "onLoaded"

    .prologue
    .line 326
    const/4 v2, 0x6

    new-instance v3, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 328
    .local v12, response:Landroid/os/Message;
    const/16 v2, 0x4f30

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 329
    sput-object p2, Lcom/android/internal/telephony/IccFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 332
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 350
    :goto_0
    return-void

    .line 338
    :cond_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v5

    .line 342
    .local v5, newfileid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 345
    .end local v5           #newfileid:I
    .end local v6           #efPath:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v14, 0xc0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v22, v12

    invoke-interface/range {v13 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 12
    .parameter "aid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 365
    new-instance v11, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v11, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 367
    .local v11, ct:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 368
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    move v2, p2

    move v5, v4

    move v6, v4

    move-object v8, v7

    move-object v9, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 24
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 408
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 412
    .local v13, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v5, p1

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 436
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x6f31

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 424
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v6

    .line 426
    .local v6, newfileid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 429
    .end local v6           #newfileid:I
    .end local v7           #efPath:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xc0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, p1

    move-object/from16 v23, v13

    invoke-interface/range {v14 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "filePath"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 440
    const/4 v0, 0x4

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 442
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    move v2, p1

    move-object v3, p2

    move v5, v4

    move v6, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 444
    return-void
.end method

.method public loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .parameter "aid"
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 459
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, v4, p3}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 461
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    move v2, p2

    move v5, v4

    move v6, v4

    move-object v8, v7

    move-object v9, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 463
    return-void
.end method

.method public loadIccDetailStatus(Landroid/os/Message;)V
    .locals 11
    .parameter "onLoaded"

    .prologue
    const/16 v1, 0xf2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1177
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1181
    .local v10, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move v5, v4

    move v6, v4

    move-object v7, v3

    move-object v8, v3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1190
    :goto_0
    return-void

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v5, v4

    move v6, v4

    move-object v7, v3

    move-object v8, v3

    move-object v9, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1221
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 15
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 523
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    :goto_0
    return-void

    .line 532
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v3

    .line 536
    .local v3, newfileid:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    const/4 v6, 0x4

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move/from16 v5, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 540
    .end local v3           #newfileid:I
    .end local v4           #efPath:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xdc

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    move-object/from16 v0, p3

    array-length v11, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    move/from16 v7, p1

    move/from16 v9, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "strDFid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3F00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, efPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    array-length v6, p4

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 506
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 15
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 557
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd6

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/IccFileHandler;->mAid:Ljava/lang/String;

    move/from16 v3, p1

    move-object/from16 v11, p3

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 577
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6f31

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 565
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, efPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->appendFilePath(I)I

    move-result v3

    .line 567
    .local v3, newfileid:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 571
    .end local v3           #newfileid:I
    .end local v4           #efPath:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd6

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v7, p1

    move-object/from16 v14, p3

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V
    .locals 11
    .parameter "aid"
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p2

    move v5, v4

    move-object v9, p1

    move-object v10, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 589
    return-void
.end method
