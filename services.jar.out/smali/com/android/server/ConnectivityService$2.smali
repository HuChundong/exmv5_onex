.class Lcom/android/server/ConnectivityService$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 7703
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x1e

    const/16 v11, 0x1c

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 7707
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.internal.telephony.dualgsm_readytoswitch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7708
    const-string v6, "phone_type"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7709
    .local v4, phoneType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getMobileDataType(I)I
    invoke-static {v6, v4}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;I)I

    move-result v3

    .line 7710
    .local v3, mobileType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRecieve: phoneType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mobileType= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7711
    if-ne v3, v11, :cond_1

    .line 7712
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x77

    invoke-virtual {v7, v8, v12, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7776
    .end local v3           #mobileType:I
    .end local v4           #phoneType:I
    :cond_0
    :goto_0
    return-void

    .line 7714
    .restart local v3       #mobileType:I
    .restart local v4       #phoneType:I
    :cond_1
    if-ne v3, v12, :cond_2

    .line 7715
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x77

    invoke-virtual {v7, v8, v11, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7718
    :cond_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpect mobile type= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_0

    .line 7726
    .end local v3           #mobileType:I
    .end local v4           #phoneType:I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7727
    const-string v6, "cw_ssid_key"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7728
    .local v2, cw_ssid_key_value:I
    const/4 v0, -0x1

    .line 7729
    .local v0, ctcw_state_change_key:I
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: android.net.wifi.STATE_CHANGE, cw_ssid_key_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7732
    if-ne v10, v2, :cond_4

    .line 7733
    const/16 v0, 0xa

    .line 7736
    :cond_4
    if-eq v9, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v8, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v6, v7, v8, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7738
    .end local v0           #ctcw_state_change_key:I
    .end local v2           #cw_ssid_key_value:I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7739
    const-string v6, "cw_reg_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7740
    .local v1, cw_reg_state_value:I
    const/4 v0, -0x1

    .line 7741
    .restart local v0       #ctcw_state_change_key:I
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED, cw_uw_reg_state_key_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7746
    const/16 v6, 0x65

    if-ne v6, v1, :cond_7

    .line 7747
    const/16 v0, 0xc

    .line 7752
    :cond_6
    :goto_1
    if-eq v9, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v8, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v6, v7, v8, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 7748
    :cond_7
    const/16 v6, 0x66

    if-ne v6, v1, :cond_6

    .line 7749
    const/16 v0, 0xb

    goto :goto_1

    .line 7754
    .end local v0           #ctcw_state_change_key:I
    .end local v1           #cw_reg_state_value:I
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.CW_ANY_DATA_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7755
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7756
    .local v5, state_key_value:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 7758
    const/4 v0, -0x1

    .line 7759
    .restart local v0       #ctcw_state_change_key:I
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: android.intent.action.CW_ANY_DATA_STATE, state_key_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7764
    const-string v6, "CONNECTED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 7765
    const/16 v0, 0xe

    .line 7770
    :cond_9
    :goto_2
    if-eq v9, v0, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v7, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    const-string v8, "CWState"

    #calls: Lcom/android/server/ConnectivityService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v6, v7, v8, v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 7766
    :cond_a
    const-string v6, "CONNECTING"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7767
    const/16 v0, 0xd

    goto :goto_2
.end method
