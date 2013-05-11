.class Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "ImsSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0xa

    .line 81
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 84
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 85
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    move v6, v7

    :cond_0
    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z
    invoke-static {v9, v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Z)Z

    .line 88
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, v7, :cond_1

    .line 91
    :try_start_1
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .local v5, values:[I
    if-eqz v5, :cond_1

    :try_start_2
    array-length v6, v5

    if-lez v6, :cond_1

    .line 98
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v7, 0x0

    aget v7, v5, v7

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;I)I

    .line 103
    .end local v5           #values:[I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 107
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 108
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 109
    :try_start_4
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    .line 111
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 112
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const/4 v10, 0x0

    #calls: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v9, v6, v10}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 114
    :cond_3
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "Cannot load Sms records"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 123
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 124
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 125
    :try_start_6
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 127
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 128
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const/4 v10, 0x1

    #calls: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v9, v6, v10}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 130
    :cond_5
    :try_start_7
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "Cannot load Sms records"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 140
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 141
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 142
    :try_start_8
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_7

    .line 143
    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v8, v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;[B)[B

    .line 149
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 145
    :cond_7
    :try_start_9
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "Cannot load singleSms records"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)[B

    move-result-object v6

    if-eqz v6, :cond_6

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;[B)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .line 156
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 157
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v7, v6, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v7

    .line 158
    :try_start_a
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 159
    iget-object v8, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v8, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    .line 165
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    .line 162
    :cond_8
    :try_start_b
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "Cannot load Sms Center"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 163
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    .line 169
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 170
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v7, v6, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v7

    .line 171
    :try_start_c
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_9

    .line 177
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 178
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v6

    .line 175
    :cond_9
    :try_start_d
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "Cannot update Sms Center"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_5

    .line 183
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 184
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 185
    :try_start_e
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_c

    .line 186
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 187
    .local v2, code:Ljava/lang/String;
    const-string v6, "EVENT_UPDATE_SMSFORMAT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v11, :cond_a

    .line 189
    const-string v6, "EVENT_UPDATE_SMSFORMAT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sub code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v6, "01"

    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v7, :cond_b

    .line 191
    const-string v6, "EVENT_UPDATE_SMSFORMAT"

    const-string v7, "change to 3gpp"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v6, "gsm.vzw.sms.format"

    const-string v7, "3gpp"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v2           #code:Ljava/lang/String;
    :cond_a
    :goto_6
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v8

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v6

    .line 195
    .restart local v2       #code:Ljava/lang/String;
    :cond_b
    :try_start_f
    const-string v6, "EVENT_UPDATE_SMSFORMAT"

    const-string v7, "change to 3gpp2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v6, "gsm.vzw.sms.format"

    const-string v7, "3gpp2"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 202
    .end local v2           #code:Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot update smsformat"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_6

    .line 209
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 210
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 211
    :try_start_10
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_f

    .line 212
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 213
    .restart local v2       #code:Ljava/lang/String;
    const-string v6, "EVENT_UPDATE_WRITEUICC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v11, :cond_d

    .line 215
    const-string v6, "EVENT_UPDATE_WRITEUICC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sub code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v6, "01"

    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v7, :cond_e

    .line 217
    const-string v6, "EVENT_UPDATE_WRITEUICC"

    const-string v7, "change to 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v6, "gsm.vzw.sms.writeuicc"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v2           #code:Ljava/lang/String;
    :cond_d
    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 229
    monitor-exit v8

    goto/16 :goto_0

    :catchall_7
    move-exception v6

    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v6

    .line 220
    .restart local v2       #code:Ljava/lang/String;
    :cond_e
    :try_start_11
    const-string v6, "EVENT_UPDATE_WRITEUICC"

    const-string v7, "change to 0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v6, "gsm.vzw.sms.writeuicc"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 226
    .end local v2           #code:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v7, "Cannot update smsformat"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_7

    .line 234
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 235
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 236
    :try_start_12
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_11

    .line 237
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v4, v0

    .line 239
    .local v4, result:[I
    if-eqz v4, :cond_10

    array-length v6, v4

    if-lez v6, :cond_10

    .line 242
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const/4 v8, 0x0

    aget v8, v4, v8

    #setter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLinearFixedEfRecordLength:I
    invoke-static {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;I)I

    .line 243
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLinearFixedEfRecordLength:I
    invoke-static {v9}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 254
    .end local v4           #result:[I
    :goto_8
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 255
    monitor-exit v7

    goto/16 :goto_0

    :catchall_8
    move-exception v6

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v6

    .line 245
    .restart local v4       #result:[I
    :cond_10
    :try_start_13
    iget-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;

    const-string v8, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE get empty result"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 250
    .end local v4           #result:[I
    :cond_11
    const-string v6, "RuimSmsInterfaceManager"

    const-string v8, "handle message: EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE"

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_8

    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
