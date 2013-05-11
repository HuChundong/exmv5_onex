.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 234
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 238
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 101
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 102
    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 103
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_RECORD_SIZE Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 119
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 120
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 113
    :cond_0
    :try_start_1
    const-string v4, "IccPhoneBookInterfaceManager"

    const-string v6, "handle message: EVENT_GET_SIZE_DONE"

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-static {}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000()[I

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->recordSize:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 124
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 125
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    :goto_2
    iput-boolean v4, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->success:Z

    .line 126
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 127
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    move v4, v5

    .line 125
    goto :goto_2

    .line 130
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 131
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 132
    :try_start_3
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 133
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    .line 140
    :cond_2
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 141
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 135
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot load ADN records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 137
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 146
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 147
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    .line 148
    :try_start_5
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    #setter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v6, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$102(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 151
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "load ADN records success!!"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    .line 157
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mQueryHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    .line 153
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->phoneBookEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 164
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 166
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    .line 167
    if-eqz v1, :cond_6

    :try_start_7
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 169
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot add PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    .line 171
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    .line 172
    .local v0, adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 173
    const-string v3, "MemoryFull:"

    .line 174
    .local v3, error_prefix:Ljava/lang/String;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AdnFull"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 185
    .end local v0           #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .end local v3           #error_prefix:Ljava/lang/String;
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    .line 176
    .restart local v0       #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .restart local v3       #error_prefix:Ljava/lang/String;
    :cond_7
    :try_start_8
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, error_message:Ljava/lang/String;
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    goto :goto_5

    .line 181
    .end local v2           #error_message:Ljava/lang/String;
    :cond_8
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    .line 190
    .end local v0           #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #error_prefix:Ljava/lang/String;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 192
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    .line 193
    if-eqz v1, :cond_9

    :try_start_9
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot update PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    .line 197
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    .line 198
    .restart local v0       #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 199
    const-string v3, "MemoryFull:"

    .line 200
    .restart local v3       #error_prefix:Ljava/lang/String;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 201
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #error_message:Ljava/lang/String;
    const/4 v4, 0x4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError_type:I

    .line 210
    .end local v0           #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .end local v2           #error_message:Ljava/lang/String;
    .end local v3           #error_prefix:Ljava/lang/String;
    :cond_9
    :goto_6
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v4

    .line 205
    .restart local v0       #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .restart local v3       #error_prefix:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x3

    :try_start_a
    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    .line 215
    .end local v0           #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #error_prefix:Ljava/lang/String;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 217
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    monitor-enter v5

    .line 218
    if-eqz v1, :cond_b

    :try_start_b
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot delete PBK entry"

    #calls: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$200(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)V

    .line 222
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ADNErrorType;

    .line 223
    .restart local v0       #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 224
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 226
    .end local v0           #adnErrorType:Lcom/android/internal/telephony/ADNErrorType;
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLockHtcPbk:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v5

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v4

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
