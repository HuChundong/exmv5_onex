.class Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamGuideHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3541
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 3542
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3543
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3547
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 3602
    :goto_0
    return-void

    .line 3549
    :pswitch_0
    const-string v8, "RoamingGuide"

    const-string v9, "MSG_SPRINT_ROAMING_GUIDE  >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3554
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 3556
    const-string v8, "RoamingGuide"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhone.htcGetCdmaEriCallGuard() value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v10, v10, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 3560
    const-string v6, "RoamingGuide"

    const-string v7, " CDMA roaming !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$700(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    .line 3598
    :cond_0
    :goto_1
    const-string v6, "RoamingGuide"

    const-string v7, "MSG_SPRINT_ROAMING_GUIDE  <<<"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3563
    :cond_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 3564
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3565
    .local v5, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-lez v8, :cond_2

    move v1, v6

    .line 3566
    .local v1, bFirstOfAll:Z
    :goto_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_3

    move v2, v6

    .line 3568
    .local v2, bLastOfAll:Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3569
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v5, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .end local v1           #bFirstOfAll:Z
    .end local v2           #bLastOfAll:Z
    :cond_2
    move v1, v7

    .line 3565
    goto :goto_2

    .restart local v1       #bFirstOfAll:Z
    :cond_3
    move v2, v7

    .line 3566
    goto :goto_3

    .line 3573
    .restart local v2       #bLastOfAll:Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, v7, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 3575
    .local v3, ss:I
    const-string v7, "RoamingGuide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bFirstOfAll >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bLastOfAll >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z
    invoke-static {v7, v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3577
    iget-object v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 3579
    :cond_5
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v7}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 3580
    .local v0, appName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;
    invoke-static {v7}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3581
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v5, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .line 3583
    :cond_6
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3593
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #bFirstOfAll:Z
    .end local v2           #bLastOfAll:Z
    .end local v3           #ss:I
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const-string v6, "RoamingGuide"

    const-string v7, " GSM roaming !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3594
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$700(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 3547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
