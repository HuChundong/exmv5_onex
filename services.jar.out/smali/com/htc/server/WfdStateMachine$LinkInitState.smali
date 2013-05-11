.class Lcom/htc/server/WfdStateMachine$LinkInitState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkInitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 366
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const/4 v11, 0x3

    const-wide/16 v9, 0xbb8

    const/16 v8, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    .line 372
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_4

    .line 373
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApState(Landroid/net/wifi/WifiManager;)I

    move-result v5

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    .line 382
    :goto_0
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, iface:Ljava/lang/String;
    const/4 v0, 0x1

    .line 385
    .local v0, currentIsSta:Z
    if-eqz v1, :cond_0

    .line 386
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current wivu interface is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 392
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1

    .line 393
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    .line 395
    :cond_1
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ap state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", network type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v6, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v4, :cond_6

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AP enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    :goto_2
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 883
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkInitState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " drop message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move v3, v2

    .line 885
    :sswitch_0
    return v3

    .line 377
    .end local v0           #currentIsSta:Z
    .end local v1           #iface:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApState(Landroid/net/wifi/WifiManager;)I

    move-result v5

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mWifiApState:I

    goto/16 :goto_0

    .restart local v0       #currentIsSta:Z
    .restart local v1       #iface:Ljava/lang/String;
    :cond_5
    move v0, v3

    .line 387
    goto/16 :goto_1

    .line 398
    :cond_6
    sget-boolean v4, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v4, :cond_2

    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AP enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v6, v6, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 403
    :sswitch_1
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 404
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_3

    .line 409
    :sswitch_2
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 410
    const-string v3, "WfdStateMachine"

    const-string v4, "CT3 Mirror Enabled: Do not scan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 412
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto :goto_3

    .line 415
    :cond_7
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 416
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 417
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 419
    :cond_8
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 420
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 426
    :sswitch_3
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 427
    const-string v3, "WfdStateMachine"

    const-string v4, "CT3 Mirror Enabled: Do not scan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 429
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto/16 :goto_3

    .line 432
    :cond_9
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsScanning:Z

    .line 433
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mScanDongleState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 434
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 438
    :sswitch_4
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x19

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 441
    :sswitch_5
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 442
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 444
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v4, :cond_a

    .line 445
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x47

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 446
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x47

    const-wide/32 v6, 0x249f0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 448
    const-string v4, "WfdStateMachine"

    const-string v5, "CMD_START_CONFIGURE - Set CMD_RETRY_CONFIGURE_WITH_DONGLE_RESET = 150000"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v4, :cond_c

    .line 451
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x30

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 458
    :cond_a
    :goto_4
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 459
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-eqz v4, :cond_b

    .line 460
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 461
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 463
    :cond_b
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->stopWivuDiscovery()V

    .line 464
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 466
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 467
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 468
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 452
    :cond_c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v4, v2, :cond_d

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v4, v11, :cond_e

    .line 453
    :cond_d
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x31

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_4

    .line 455
    :cond_e
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x32

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_4

    .line 469
    :cond_f
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 471
    :cond_11
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 472
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 474
    :cond_12
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 477
    :cond_14
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$400(Lcom/htc/server/WfdStateMachine;Z)V

    .line 478
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 479
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_15

    .line 480
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v8}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 482
    :cond_15
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v8, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 484
    :cond_16
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 485
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 486
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    goto/16 :goto_3

    .line 499
    :sswitch_6
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    .line 500
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 502
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 503
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 504
    :cond_17
    const-string v3, "WfdStateMachine"

    const-string v4, "Set DISCONNECT_DFS bit."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 508
    :sswitch_7
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 509
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v3, :cond_3

    .line 510
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 513
    :sswitch_8
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 514
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 517
    :sswitch_9
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v4, v2, :cond_1b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 519
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v4, :cond_18

    .line 520
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x2

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 529
    :goto_5
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDfsChannel:Z

    goto/16 :goto_3

    .line 521
    :cond_18
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    if-eqz v4, :cond_19

    .line 522
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 523
    :cond_19
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-eqz v4, :cond_1a

    .line 524
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x44

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 526
    :cond_1a
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v2, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 527
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    goto :goto_5

    .line 530
    :cond_1b
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->status:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1d

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v4, v4, Lcom/htc/service/DongleInfo;->status:I

    if-ne v4, v2, :cond_3

    .line 537
    :cond_1d
    const-string v4, "WfdStateMachine"

    const-string v5, "Dongle is reset and wifi is just connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->clear(I)V

    .line 539
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 540
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 541
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v3, :cond_1e

    .line 542
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 544
    :cond_1e
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 545
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 550
    :sswitch_a
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 551
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 552
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 553
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x37

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 555
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_20

    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_20

    if-eqz v0, :cond_20

    .line 558
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 559
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 627
    :cond_1f
    :goto_6
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    goto/16 :goto_3

    .line 560
    :cond_20
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    if-nez v3, :cond_1f

    .line 561
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_21

    if-nez v0, :cond_21

    .line 562
    const-string v3, "WfdStateMachine"

    const-string v4, "CT3 Mirror: Do not turn ON STA for CMD_START_DISCOVERY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_21
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v3, v3, Lcom/htc/service/DongleInfo;->status:I

    if-ne v3, v11, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v3, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$600(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$700(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$800(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v3, :cond_23

    :cond_22
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    if-eqz v3, :cond_24

    .line 574
    :cond_23
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 575
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_6

    .line 576
    :cond_24
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget v3, v3, Lcom/htc/service/DongleInfo;->status:I

    if-eq v3, v11, :cond_25

    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v3, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v3, :cond_25

    .line 578
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 579
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 582
    :cond_25
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-boolean v3, v3, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isDglConnToSameAphOrUncfg(Z)Z
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$600(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isAphSignalPoor()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$700(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isNoisyEnv()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$800(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsFixedCT1:Z

    if-eqz v3, :cond_28

    .line 588
    :cond_27
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 589
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 590
    :cond_28
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 591
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x34

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_6

    .line 593
    :cond_29
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsP2pSet:Z

    if-eqz v3, :cond_2a

    .line 595
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1000(Lcom/htc/server/WfdStateMachine;)V

    .line 598
    :cond_2a
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2b
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 600
    :cond_2c
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1100(Lcom/htc/server/WfdStateMachine;)V

    .line 601
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1200(Lcom/htc/server/WfdStateMachine;)V

    .line 602
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 603
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_6

    .line 605
    :cond_2d
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 607
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v3, :cond_2e

    .line 608
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x3b

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 614
    :cond_2e
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_30

    :cond_2f
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isCommonProfileAPEnabled()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$300(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_31

    .line 616
    :cond_30
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 618
    :cond_31
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 619
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 620
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    goto/16 :goto_6

    .line 630
    :sswitch_b
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 631
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v4, Lcom/htc/server/WfdStateMachine;->mIsScanComplete:Z

    .line 632
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    if-eqz v4, :cond_33

    .line 633
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_32

    .line 634
    const-string v3, "WfdStateMachine"

    const-string v4, "Last scan is complete, ready to configure."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 638
    :cond_32
    const-string v3, "WfdStateMachine"

    const-string v4, "Last scan is complete, send delay msg for WPSOnDemand."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 642
    :cond_33
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    if-eqz v4, :cond_3

    .line 643
    const-string v4, "WfdStateMachine"

    const-string v5, "Last scan is complete, ready to discovery."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 645
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferDiscovery:Z

    goto/16 :goto_3

    .line 649
    :sswitch_c
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 650
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 653
    :sswitch_d
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    if-eqz v4, :cond_3

    .line 654
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v5, 0x2

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 655
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    goto/16 :goto_3

    .line 663
    :sswitch_e
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mNotificationState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_34

    .line 664
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->finish()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1400(Lcom/htc/server/WfdStateMachine;)V

    goto/16 :goto_3

    .line 665
    :cond_34
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    if-ne v4, v8, :cond_39

    .line 666
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 668
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v4, :cond_36

    .line 669
    :cond_35
    const-string v4, "WfdStateMachine"

    const-string v5, "Enable scan....@LinkInit - Cancel Configuring/Reconfiguring/Reconnecting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 672
    :cond_36
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 673
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 674
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 675
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 676
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsSwitchingDongles:Z

    .line 677
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 678
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    .line 679
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 680
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 682
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v4, :cond_38

    .line 683
    :cond_37
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 684
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput v11, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 685
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 689
    :cond_38
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 690
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    goto/16 :goto_3

    .line 691
    :cond_39
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v5, 0x38

    if-eq v4, v5, :cond_3a

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_3b

    .line 693
    :cond_3a
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 694
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 695
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 696
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 697
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsShowScanning:Z

    .line 698
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDeferConfigure:Z

    .line 699
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mNeedSwitchingAph:Z

    .line 700
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 701
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 702
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 703
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    goto/16 :goto_3

    .line 705
    :cond_3b
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3e

    .line 706
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v3, :cond_3c

    .line 707
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 709
    :cond_3c
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    .line 710
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x25

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 712
    :cond_3d
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x37

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 715
    :cond_3e
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_3

    .line 719
    :sswitch_f
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-nez v3, :cond_3

    .line 720
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v3, :cond_3f

    .line 721
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v3, :cond_43

    .line 722
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x30

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 728
    :cond_3f
    :goto_7
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1500(Lcom/htc/server/WfdStateMachine;)V

    .line 729
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v3, v2, :cond_41

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 732
    :cond_40
    const-string v3, "WfdStateMachine"

    const-string v4, "Wifi is connected before dongle resetting."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 735
    :cond_41
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 737
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v3, :cond_46

    .line 738
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v3, :cond_42

    .line 739
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x5

    iput v4, v3, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 740
    :cond_42
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 741
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x5

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 723
    :cond_43
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-eq v3, v2, :cond_44

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-ne v3, v11, :cond_45

    .line 724
    :cond_44
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x31

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_7

    .line 726
    :cond_45
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x32

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_7

    .line 743
    :cond_46
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWifiState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 744
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x5

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 749
    :sswitch_10
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestResetOnDemand()V
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1500(Lcom/htc/server/WfdStateMachine;)V

    .line 750
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 751
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    if-eqz v4, :cond_48

    .line 752
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting dongle when canceling...count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v6, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 754
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-nez v4, :cond_48

    .line 755
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v4, :cond_47

    .line 756
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 757
    :cond_47
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 758
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 759
    const-string v3, "WfdStateMachine"

    const-string v4, "Resetting dongle when canceling...Complete!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 763
    :cond_48
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    if-eqz v4, :cond_3

    .line 764
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hard-Resetting dongle when AutoTestConfiguring...count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v6, v6, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    .line 766
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mResetDongleCount:I

    if-nez v4, :cond_3

    .line 767
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v4, :cond_49

    .line 768
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x19

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 769
    :cond_49
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 770
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsHardReset:Z

    .line 771
    const-string v3, "WfdStateMachine"

    const-string v4, "Hard-Resetting dongle when AutoTestConfiguring...Complete!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v3, "WfdStateMachine"

    const-string v4, "Request Scanning for updating Dongle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x19

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 774
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v8}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 780
    :sswitch_11
    const-string v4, "WfdStateMachine"

    const-string v5, "Dongle is reset."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 782
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsCancelConfiguring:Z

    .line 783
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 784
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 787
    const-string v4, "WfdStateMachine"

    const-string v5, "Dongle is reset and wifi is already connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 789
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->clear(I)V

    .line 791
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v3, :cond_4a

    .line 792
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 794
    :cond_4a
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 795
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 799
    :cond_4b
    const-string v4, "WfdStateMachine"

    const-string v5, "Dongle is reset and wifi isn\'t connected before."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    .line 802
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsAutoTestConfiguring:Z

    if-nez v3, :cond_4c

    .line 803
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 805
    :cond_4c
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 806
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 811
    :sswitch_12
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 812
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x45

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 813
    :cond_4d
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :cond_4e
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 815
    :cond_4f
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 816
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 818
    :cond_50
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1600(Lcom/htc/server/WfdStateMachine;)V

    .line 819
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x40

    invoke-virtual {v3, v4, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 823
    :sswitch_13
    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD]===>Dongle unlock successful."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 825
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 826
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 828
    :sswitch_14
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v2, v3, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 829
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isConnectToDfsChannels()Z
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$900(Lcom/htc/server/WfdStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 830
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x45

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 831
    :cond_51
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_52
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 833
    :cond_53
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 834
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 837
    :cond_54
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$400(Lcom/htc/server/WfdStateMachine;Z)V

    .line 838
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 839
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_55

    .line 840
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v8}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 842
    :cond_55
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v8, v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 846
    :sswitch_15
    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD]===>Dongle unlock failed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 848
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 849
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 850
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 851
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x40

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 854
    :sswitch_16
    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD]===>Dongle unlock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 856
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 857
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 858
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x41

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 861
    :sswitch_17
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0xd

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_3

    .line 864
    :sswitch_18
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x38

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 865
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto/16 :goto_3

    .line 868
    :sswitch_19
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x3a

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 869
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    goto/16 :goto_3

    .line 872
    :sswitch_1a
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4, v3}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 873
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkInitState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    goto/16 :goto_3

    .line 879
    :sswitch_1b
    const-string v3, "WfdStateMachine"

    const-string v4, "[0619] ====>>> @LinkInit: Finish service, NOT quit state machine. <<<===="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v3, "WfdStateMachine"

    const-string v4, "[0619] ====>>> @LinkInit: Defer to WfdService OnDestroy() <<<===="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_a
        0x3 -> :sswitch_1
        0x11 -> :sswitch_8
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1f -> :sswitch_9
        0x21 -> :sswitch_d
        0x25 -> :sswitch_b
        0x27 -> :sswitch_17
        0x28 -> :sswitch_e
        0x2c -> :sswitch_4
        0x2e -> :sswitch_18
        0x2f -> :sswitch_19
        0x32 -> :sswitch_1b
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x37 -> :sswitch_c
        0x38 -> :sswitch_0
        0x3a -> :sswitch_7
        0x3d -> :sswitch_f
        0x3e -> :sswitch_10
        0x3f -> :sswitch_11
        0x40 -> :sswitch_12
        0x41 -> :sswitch_13
        0x42 -> :sswitch_15
        0x43 -> :sswitch_16
        0x44 -> :sswitch_14
        0x45 -> :sswitch_6
        0x47 -> :sswitch_1a
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
