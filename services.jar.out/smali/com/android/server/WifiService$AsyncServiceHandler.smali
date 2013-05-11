.class Lcom/android/server/WifiService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    .line 469
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0x3e8

    const v8, 0x25016

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 474
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 624
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiServicehandler.handleMessage ignoring msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 476
    :sswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 477
    const-string v4, "WifiService"

    const-string v5, "New client listening to asynchronous messages"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_1
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection failure, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 486
    const-string v4, "WifiService"

    const-string v5, "Send failed, client connection lost"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_1
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_2
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client connection lost with reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 495
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 499
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_2
    #setter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v7, v4}, Lcom/android/server/WifiService;->access$302(Lcom/android/server/WifiService;Z)Z

    .line 500
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$408(Lcom/android/server/WifiService;)I

    .line 501
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 503
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v4

    invoke-static {p0, v8, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 499
    goto :goto_2

    .line 509
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v5}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v4}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 511
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v4

    invoke-static {p0, v8, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 520
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v4

    if-nez v4, :cond_4

    .line 521
    iget-object v5, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    const-string v7, "wireless_display"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/WirelessDisplayManager;

    #setter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v5, v4}, Lcom/android/server/WifiService;->access$602(Lcom/android/server/WifiService;Lcom/htc/service/WirelessDisplayManager;)Lcom/htc/service/WirelessDisplayManager;

    .line 523
    :cond_4
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 524
    const-string v4, "WifiService"

    const-string v5, "[WFD] Mirror Mode is ON, force to stop Mirror mode when connect to AP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 530
    :cond_5
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v4}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 531
    const-string v4, "WifiService"

    const-string v5, "STA select Network to connect but hotspot is ON, turn off hotspot..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v5, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/WifiService;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 535
    :cond_6
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 542
    :sswitch_6
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v2

    .line 543
    .local v2, mDeviceManager:Lcom/android/server/DeviceManager3LMService;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 544
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceManager3LMService;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 545
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 547
    :cond_7
    const-string v5, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[3LM] try to save unallowed SSID : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 550
    :cond_8
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 556
    .end local v2           #mDeviceManager:Lcom/android/server/DeviceManager3LMService;
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 560
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 564
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 568
    :sswitch_a
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 573
    :sswitch_b
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v6, v5, v7, v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_0

    .line 579
    :sswitch_c
    iget-object v5, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 582
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableMhsFeature:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v5, -0x43

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 584
    :cond_9
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v4, v6}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 589
    :sswitch_d
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    :cond_a
    const/16 v4, 0x2a

    invoke-static {p0, v4, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 596
    :sswitch_e
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    :cond_b
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 598
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_password"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_c

    .line 600
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 603
    .end local v1           #key:Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_ssid"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, ssid:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 606
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    goto/16 :goto_0

    .line 613
    .end local v3           #ssid:Ljava/lang/String;
    :sswitch_f
    const-string v4, "WifiService"

    const-string v5, "[C+W] registration when screen on but call fail."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    const-string v4, "WifiService"

    const-string v5, "Trigger CW registration when screen on++"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->resetCwRetryCounter()V

    .line 617
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->tryToStartCWRegister()V

    .line 618
    const-string v4, "WifiService"

    const-string v5, "Trigger CW registration when screen on--"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_b
        0x20 -> :sswitch_c
        0x29 -> :sswitch_d
        0x2a -> :sswitch_e
        0x64 -> :sswitch_f
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x25001 -> :sswitch_5
        0x25004 -> :sswitch_7
        0x25007 -> :sswitch_6
        0x2500a -> :sswitch_8
        0x2500e -> :sswitch_9
        0x25011 -> :sswitch_a
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
