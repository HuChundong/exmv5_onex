.class Lcom/android/internal/telephony/UIDRecordLoader;
.super Landroid/os/Handler;
.source "UIDRecord.java"


# static fields
.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_UID_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "UIDRecord"


# instance fields
.field ef:I

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field pendingCommand:I

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field uidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;"
        }
    .end annotation
.end field

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 57
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "phone"
    .parameter "iccFileHandler"

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 64
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 65
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

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

    .line 143
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 236
    iput-object v14, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 238
    :cond_1
    :goto_1
    return-void

    .line 148
    :pswitch_0
    :try_start_1
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 150
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/UIDRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/UIDRecord;

    move-object v13, v0

    .line 152
    .local v13, uid:Lcom/android/internal/telephony/UIDRecord;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 153
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v13           #uid:Lcom/android/internal/telephony/UIDRecord;
    :catch_0
    move-exception v9

    .line 223
    .local v9, exc:Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 228
    iput-object v14, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 157
    .end local v9           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #ar:Landroid/os/AsyncResult;
    .restart local v13       #uid:Lcom/android/internal/telephony/UIDRecord;
    :cond_2
    :try_start_2
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v11, v0

    .line 163
    .local v11, recordSize:[I
    array-length v2, v11

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v11, v3

    if-le v2, v3, :cond_4

    .line 164
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    :cond_4
    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/UIDRecord;->buildUIDString(I)[B

    move-result-object v4

    .line 170
    .local v4, data:[B
    if-nez v4, :cond_5

    .line 171
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong UID format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 175
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 176
    .local v1, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_6

    .line 177
    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 184
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 180
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    .end local v1           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    .end local v4           #data:[B
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #recordSize:[I
    .end local v13           #uid:Lcom/android/internal/telephony/UIDRecord;
    :pswitch_1
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 190
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 191
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF UID record failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 194
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 202
    .end local v7           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_UID_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 205
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 207
    .local v8, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 208
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 211
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    .line 215
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, s:I
    :goto_2
    if-ge v10, v12, :cond_0

    .line 216
    new-instance v13, Lcom/android/internal/telephony/UIDRecord;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v13, v3, v2}, Lcom/android/internal/telephony/UIDRecord;-><init>(I[B)V

    .line 217
    .restart local v13       #uid:Lcom/android/internal/telephony/UIDRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 143
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

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 79
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_1

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v1, "UIDRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 88
    iput-object v4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "uidRecord"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    .line 113
    iput p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    .line 114
    iput-object p4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 117
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_1

    .line 118
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, "UIDRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    iput-object v4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
