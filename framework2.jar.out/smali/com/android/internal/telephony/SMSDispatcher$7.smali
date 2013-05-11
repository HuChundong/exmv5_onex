.class Lcom/android/internal/telephony/SMSDispatcher$7;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3044
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3047
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO Intent Received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3052
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3053
    const-string v7, "SMS"

    const-string v8, "Receive intent ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, v7, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 3056
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 3057
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$7$1;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SMSDispatcher$7$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher$7;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3073
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 3113
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 3077
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3079
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    goto :goto_0

    .line 3084
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3086
    const-string v7, "phoneinECMState"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3087
    .local v1, isECM:Z
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v9, 0x16

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3091
    .end local v1           #isECM:Z
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3092
    const-string v7, "address"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3093
    .local v2, originatingAddress:Ljava/lang/String;
    const-string v7, "count"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3094
    .local v4, sequenceCount:I
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V

    goto :goto_0

    .line 3098
    .end local v2           #originatingAddress:Ljava/lang/String;
    .end local v4           #sequenceCount:I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    invoke-static {v8, p2}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Intent;)Z

    move-result v8

    if-eq v8, v7, :cond_1

    .line 3105
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$7;->getResultCode()I

    move-result v3

    .line 3106
    .local v3, rc:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    if-ne v3, v7, :cond_7

    :cond_6
    move v5, v7

    .line 3111
    .local v5, success:Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v3, v8}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
