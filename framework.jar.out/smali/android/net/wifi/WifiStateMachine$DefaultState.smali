.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4911
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4914
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4915
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 5095
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! unhandled message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5098
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 4917
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 4918
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x11001

    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 4920
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService connection failure, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4924
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4929
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$2402(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 4934
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Failed to handle IPv6 renewal"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4943
    :sswitch_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 4946
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    check-cast v0, Ljava/util/List;

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, p1, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 4949
    :sswitch_7
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_3

    move v2, v1

    :cond_3
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$2702(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 4952
    :sswitch_8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_4

    move v2, v1

    :cond_4
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$2802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 4955
    :sswitch_9
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_5

    move v2, v1

    :cond_5
    #setter for: Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$2902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 4960
    :sswitch_a
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mReqSchedScanInteval:I
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$3002(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 4963
    :sswitch_b
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_6

    move v2, v1

    :cond_6
    #setter for: Landroid/net/wifi/WifiStateMachine;->mRoadmingDisabled:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$3102(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5031
    :sswitch_c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 5035
    :sswitch_d
    const-string v3, "WifiStateMachine"

    const-string v4, "Receive DRIVER_HUNG_EVENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5038
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "msetWifidisplayApEnabled false due to driver hang and send WifiManager.WIFIDISPLAY_AP_STATE_CHANGED_ACTION intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5040
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3202(Z)Z

    .line 5041
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5044
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    .line 5046
    const-string v3, "WifiStateMachine"

    const-string v4, "Recovery for AP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v0, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5048
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 5049
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 5051
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 5053
    const-string v0, "WifiStateMachine"

    const-string v3, "Recovery for STA"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 5055
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 5060
    :sswitch_e
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25002

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5064
    :sswitch_f
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25005

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5068
    :sswitch_10
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25008

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5072
    :sswitch_11
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2500c

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5076
    :sswitch_12
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2500f

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5080
    :sswitch_13
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25012

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5088
    :sswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2500d

    new-instance v3, Landroid/net/wifi/WpsResult;

    sget-object v4, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v3, v4}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, p1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5092
    :sswitch_15
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x21019

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 4915
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x20001 -> :sswitch_0
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20013 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20020 -> :sswitch_0
        0x20033 -> :sswitch_5
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_5
        0x20036 -> :sswitch_5
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_0
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_5
        0x2003b -> :sswitch_6
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004c -> :sswitch_0
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_0
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_c
        0x20057 -> :sswitch_0
        0x20058 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_8
        0x20061 -> :sswitch_14
        0x20062 -> :sswitch_14
        0x20086 -> :sswitch_4
        0x2008d -> :sswitch_0
        0x2008e -> :sswitch_0
        0x20090 -> :sswitch_0
        0x20092 -> :sswitch_0
        0x20093 -> :sswitch_a
        0x20094 -> :sswitch_b
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_0
        0x21017 -> :sswitch_15
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x2400a -> :sswitch_0
        0x2400c -> :sswitch_d
        0x2400d -> :sswitch_0
        0x2400e -> :sswitch_0
        0x2400f -> :sswitch_0
        0x24011 -> :sswitch_0
        0x24012 -> :sswitch_0
        0x25001 -> :sswitch_e
        0x25004 -> :sswitch_f
        0x25007 -> :sswitch_10
        0x2500a -> :sswitch_11
        0x2500e -> :sswitch_12
        0x25011 -> :sswitch_13
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
    .end sparse-switch
.end method
