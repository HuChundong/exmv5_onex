.class Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "RuimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v7, :cond_0

    .line 121
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " HtcCdmaSIMFileHandler drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 127
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 154
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 155
    :try_start_0
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 156
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v8, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 162
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 129
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 130
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 131
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    move v5, v6

    :cond_2
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v8, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    .line 134
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-ne v5, v6, :cond_3

    .line 137
    :try_start_2
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .local v4, values:[I
    if-eqz v4, :cond_3

    :try_start_3
    array-length v5, v4

    if-lez v5, :cond_3

    .line 144
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v6, 0x0

    aget v6, v4, v6

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I

    .line 149
    .end local v4           #values:[I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 167
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 168
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 169
    :try_start_6
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 171
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 172
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v9, 0x0

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v8, v5, v9}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 174
    :cond_6
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 183
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 184
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 185
    :try_start_8
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_8

    .line 187
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 188
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v9, 0x1

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    invoke-static {v8, v5, v9}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$600(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    .line 190
    :cond_8
    :try_start_9
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot load Sms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    .line 201
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 202
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 203
    :try_start_a
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a

    .line 204
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;[B)[B

    .line 210
    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    .line 206
    :cond_a
    :try_start_b
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot load singleSms records"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)[B

    move-result-object v5

    if-eqz v5, :cond_9

    .line 208
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;[B)[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    .line 217
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 218
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 219
    :try_start_c
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_b

    .line 220
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5

    .line 223
    :cond_b
    :try_start_d
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot load Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsc:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_5

    .line 230
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 231
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 232
    :try_start_e
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_c

    .line 238
    :goto_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$800(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 239
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v5

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v5

    .line 236
    :cond_c
    :try_start_f
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot update Sms Center"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_6

    .line 244
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 245
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 246
    :try_start_10
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_d

    .line 247
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit v6

    goto/16 :goto_0

    :catchall_7
    move-exception v5

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v5

    .line 249
    :cond_d
    :try_start_11
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot get carrier id"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_7

    .line 259
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 260
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 261
    :try_start_12
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_e

    .line 262
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v5

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v5

    .line 264
    :cond_e
    :try_start_13
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1302(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "Cannot get kddi server ip"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_8

    .line 273
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 274
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 275
    :try_start_14
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_f

    .line 276
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mDmComResult:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    :goto_9
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v5

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v5

    .line 278
    :cond_f
    :try_start_15
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mDmComResult:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "get dm command result fail"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_9

    .line 288
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 289
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 290
    :try_start_16
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_11

    .line 291
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 293
    .local v3, result:[I
    if-eqz v3, :cond_10

    array-length v5, v3

    if-lez v5, :cond_10

    .line 296
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v7, 0x0

    aget v7, v3, v7

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLinearFixedEfRecordLength:I
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1602(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I

    .line 297
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLinearFixedEfRecordLength:I
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$1600(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 307
    .end local v3           #result:[I
    :goto_a
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v5

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v5

    .line 299
    .restart local v3       #result:[I
    :cond_10
    :try_start_17
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v7, "EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE get empty result"

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 303
    .end local v3           #result:[I
    :cond_11
    const-string v5, "RuimSmsInterfaceManager"

    const-string v7, "handle message: EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE"

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    goto :goto_a

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
