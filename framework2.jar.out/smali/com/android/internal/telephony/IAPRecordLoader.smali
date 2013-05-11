.class Lcom/android/internal/telephony/IAPRecordLoader;
.super Landroid/os/Handler;
.source "IAPRecord.java"


# static fields
.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_IAP_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "IAPRecord"


# instance fields
.field ef:I

.field iapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field pendingCommand:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IAPRecordLoader;->ef:I

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "phone"
    .parameter "iccFileHandler"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IAPRecordLoader;->ef:I

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 68
    iput-object p2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 69
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/IAPRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/IAPRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IAPRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v14, 0x0

    .line 147
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IAPRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 242
    iput-object v14, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 152
    :pswitch_0
    :try_start_1
    const-string v2, "IAPRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 154
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IAPRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/IAPRecord;

    move-object v11, v0

    .line 156
    .local v11, iap:Lcom/android/internal/telephony/IAPRecord;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 157
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #iap:Lcom/android/internal/telephony/IAPRecord;
    :catch_0
    move-exception v9

    .line 229
    .local v9, exc:Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 234
    iput-object v14, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 161
    .end local v9           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #ar:Landroid/os/AsyncResult;
    .restart local v11       #iap:Lcom/android/internal/telephony/IAPRecord;
    :cond_2
    :try_start_2
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v12, v0

    .line 167
    .local v12, recordSize:[I
    array-length v2, v12

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v12, v3

    if-le v2, v3, :cond_4

    .line 168
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 172
    :cond_4
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/IAPRecord;->buildIAPString(I)[B

    move-result-object v4

    .line 174
    .local v4, data:[B
    if-nez v4, :cond_5

    .line 175
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong IAP format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IAPRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 180
    .local v1, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_6

    .line 181
    iget v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/IAPRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IAPRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 188
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 184
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 192
    .end local v1           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    .end local v4           #data:[B
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #iap:Lcom/android/internal/telephony/IAPRecord;
    .end local v12           #recordSize:[I
    :pswitch_1
    const-string v2, "IAPRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 195
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 196
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF IAP record failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 200
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->pendingCommand:I

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 208
    .end local v7           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "IAPRecord"

    const-string v3, "EVENT_IAP_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 211
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 213
    .local v8, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 214
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 217
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->pendingCommand:I

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->iapList:Ljava/util/ArrayList;

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->iapList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->result:Ljava/lang/Object;

    .line 221
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, s:I
    :goto_2
    if-ge v10, v13, :cond_0

    .line 222
    new-instance v11, Lcom/android/internal/telephony/IAPRecord;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v11, v3, v2}, Lcom/android/internal/telephony/IAPRecord;-><init>(I[B)V

    .line 223
    .restart local v11       #iap:Lcom/android/internal/telephony/IAPRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->iapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 80
    iput p1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->ef:I

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/IAPRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 84
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_1

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IAPRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v1, "IAPRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    iput-object v4, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "iapRecord"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->ef:I

    .line 118
    iput p2, p0, Lcom/android/internal/telephony/IAPRecordLoader;->recordNumber:I

    .line 119
    iput-object p4, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/IAPRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 121
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_1

    .line 122
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/IAPRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, "IAPRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 130
    iput-object v4, p0, Lcom/android/internal/telephony/IAPRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
