.class final Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
.super Landroid/os/Handler;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/FakeSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 704
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 706
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 709
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 710
    .local v4, str:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 711
    .local v2, pdu:[Ljava/lang/String;
    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 713
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 773
    :goto_0
    return-void

    .line 715
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 716
    const-string v5, "FakeSmsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FAKE_CDMA_SMS_MESSAGE > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    #calls: Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V

    .line 720
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    #getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;
    invoke-static {v5}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$200(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 722
    .local v3, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-eqz v5, :cond_1

    .line 723
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v6, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v1

    .line 728
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "FakeSmsReceiver"

    const-string v6, "Exception dispatching message"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 725
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    const-string v5, "FakeSmsReceiver"

    const-string v6, "mCdmaSMSDispatcher is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 734
    .end local v3           #sms:Landroid/telephony/SmsMessage;
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 735
    const-string v5, "FakeSmsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FAKE_GSM_SMS_MESSAGE > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_2
    invoke-static {v2}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 740
    .restart local v3       #sms:Landroid/telephony/SmsMessage;
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v5, :cond_3

    .line 741
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v6, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 745
    :catch_1
    move-exception v1

    .line 746
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    const-string v5, "FakeSmsReceiver"

    const-string v6, "Exception dispatching message"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 743
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_3
    :try_start_3
    const-string v5, "FakeSmsReceiver"

    const-string v6, "mGsmSMSDispatcher is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 753
    .end local v3           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 754
    const-string v5, "FakeSmsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FAKE_GSM_CB_MESSAGE > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_4
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/CBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;

    move-result-object v0

    .line 759
    .local v0, cbMsg:Lcom/android/internal/telephony/gsm/CBMessage;
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v5, :cond_5

    .line 760
    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v5, v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchFakeCBMessage(Lcom/android/internal/telephony/gsm/CBMessage;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 764
    :catch_2
    move-exception v1

    .line 765
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    const-string v5, "FakeSmsReceiver"

    const-string v6, "Exception dispatching cb message"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 762
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_5
    :try_start_5
    const-string v5, "FakeSmsReceiver"

    const-string v6, "mGsmSMSDispatcher is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
