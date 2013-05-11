.class Lcom/htc/server/WfdStateMachine$DiscoverWivuState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscoverWivuState"
.end annotation


# instance fields
.field isCt1Timeout:Z

.field isMirrorSucceed:Z

.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1528
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    .line 1529
    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    .line 1530
    iput-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1533
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    .line 1537
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    .line 1538
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1541
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1543
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1544
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1545
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->isMirrorModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    if-nez v0, :cond_0

    .line 1546
    const-string v0, "WfdStateMachine"

    const-string v1, "Enable scan....@Wivu end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayUnscan(Landroid/net/wifi/WifiManager;Z)Z

    .line 1549
    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    .line 1550
    iget-boolean v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    if-nez v0, :cond_1

    .line 1551
    const-string v0, "WfdStateMachine"

    const-string v1, "Mirror isn\'t succeed, notify WDS stop mirror and disable AP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0, v3}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 1553
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->forceDisableAp()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$1700(Lcom/htc/server/WfdStateMachine;)V

    .line 1555
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    .line 1558
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Processing==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 1886
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " drop message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_0
    :goto_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 1561
    :sswitch_0
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v9, :cond_9

    .line 1567
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_1

    .line 1568
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1576
    .local v6, nwif:Ljava/lang/String;
    :goto_2
    :try_start_0
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v9, v6}, Lcom/htc/service/WirelessDisplayManager;->setInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    :goto_3
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WFD]===>Start Wivu discovery, interface = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    const/4 v0, 0x1

    .line 1583
    .local v0, autoMirroring:Z
    :goto_4
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WFD]===>Auto Mirroring, select dongle ssid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bssid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :try_start_1
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v10, v10, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1590
    :goto_5
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1591
    sget-boolean v9, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v9, :cond_5

    .line 1592
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 1593
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_3

    .line 1595
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x3c

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1596
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1597
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    const-wide/32 v11, 0x9c40

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1570
    .end local v0           #autoMirroring:Z
    .end local v6           #nwif:Ljava/lang/String;
    :cond_1
    const-string v9, "WfdStateMachine"

    const-string v10, "Empty network interface detect."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #nwif:Ljava/lang/String;
    goto/16 :goto_2

    .line 1577
    :catch_0
    move-exception v8

    .line 1578
    .local v8, se:Ljava/lang/SecurityException;
    const-string v9, "WfdStateMachine"

    const-string v10, "mWDManager.setInterface occurs SecurityException. "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1582
    .end local v8           #se:Ljava/lang/SecurityException;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1587
    .restart local v0       #autoMirroring:Z
    :catch_1
    move-exception v3

    .line 1588
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1599
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v9, :cond_4

    .line 1600
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/16 v11, 0x4e20

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1602
    :cond_4
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x4e20

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1606
    :cond_5
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x3c

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1607
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1608
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/32 v11, 0x9c40

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1612
    :cond_6
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1614
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v10, 0x32

    if-ne v9, v10, :cond_8

    .line 1615
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1616
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x4b

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1617
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1622
    :cond_7
    :goto_6
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/32 v11, 0x15f90

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1623
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-nez v9, :cond_0

    .line 1624
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1618
    :cond_8
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v10, 0x4b

    if-ne v9, v10, :cond_7

    .line 1619
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x50

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1620
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x3a98

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_6

    .line 1627
    .end local v0           #autoMirroring:Z
    .end local v6           #nwif:Ljava/lang/String;
    :cond_9
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===>CMD_START_WIVU_DISCOVERY: mCurrentDongle is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1631
    :sswitch_1
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_a

    .line 1632
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x46

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1633
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1634
    :cond_a
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v10, 0x46

    if-ne v9, v10, :cond_b

    .line 1635
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x4b

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1636
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1637
    :cond_b
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    const/16 v10, 0x5f

    if-ge v9, v10, :cond_0

    .line 1638
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, v10, Lcom/htc/server/WfdStateMachine;->mConfigProgress:I

    add-int/lit8 v10, v10, 0x5

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1639
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x3a98

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1643
    :sswitch_2
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1100(Lcom/htc/server/WfdStateMachine;)V

    .line 1644
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1648
    :sswitch_3
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v9, :cond_e

    .line 1651
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_c

    .line 1652
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1659
    .restart local v6       #nwif:Ljava/lang/String;
    :goto_7
    :try_start_2
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v9, v6}, Lcom/htc/service/WirelessDisplayManager;->setInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1664
    :goto_8
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WFD]===>Start Wivu discovery, interface = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1667
    sget-boolean v9, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v9, :cond_0

    goto/16 :goto_0

    .line 1654
    .end local v6           #nwif:Ljava/lang/String;
    :cond_c
    const-string v9, "WfdStateMachine"

    const-string v10, "Empty network interface detect. Set interface to Softap for Connection Request."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #nwif:Ljava/lang/String;
    goto :goto_7

    .line 1660
    :catch_2
    move-exception v8

    .line 1661
    .restart local v8       #se:Ljava/lang/SecurityException;
    const-string v9, "WfdStateMachine"

    const-string v10, "mWDManager.setInterface occurs SecurityException. "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1670
    .end local v8           #se:Ljava/lang/SecurityException;
    :cond_d
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1671
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/32 v11, 0x9c40

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1672
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    const-wide/16 v11, 0x7d0

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1675
    .end local v6           #nwif:Ljava/lang/String;
    :cond_e
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===>CMD_WIVU_DISCOVERY_FOR_CONNECTION_REQUEST: mCurrentDongle is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1679
    :sswitch_4
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1680
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 1681
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1683
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x42

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1685
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    goto/16 :goto_0

    .line 1689
    :sswitch_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isMirrorSucceed:Z

    .line 1690
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1691
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1692
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1693
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1694
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->notifyDfsReconnect()V
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$2400(Lcom/htc/server/WfdStateMachine;)V

    .line 1696
    :cond_f
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 1697
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    .line 1698
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    .line 1699
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_10

    .line 1700
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x64

    #calls: Lcom/htc/server/WfdStateMachine;->sendConfiguringProgress(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$2100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1701
    :cond_10
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkOnState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1702
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 1703
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_14

    .line 1704
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1705
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v9, "isFirstConfigurationSuccessful"

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1706
    .local v4, fcsFlag:Z
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Show tutorial = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    if-eqz v4, :cond_11

    .line 1708
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1709
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "isFirstConfigurationSuccessful"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1710
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1711
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x3c

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1713
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_11
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v9, :cond_12

    .line 1714
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x36

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1715
    :cond_12
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_13

    .line 1716
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x25

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1718
    :cond_13
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x37

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1720
    .end local v4           #fcsFlag:Z
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :cond_14
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v10, 0x38

    if-ne v9, v10, :cond_15

    .line 1721
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x21

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1722
    :cond_15
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v9, :cond_16

    .line 1723
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1f

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1725
    :cond_16
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_17

    .line 1726
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    #calls: Lcom/htc/server/WfdStateMachine;->showConnectingDialog(ZLcom/htc/service/DongleInfo;)V
    invoke-static {v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2500(Lcom/htc/server/WfdStateMachine;ZLcom/htc/service/DongleInfo;)V

    .line 1727
    :cond_17
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x20

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1752
    :sswitch_6
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===>Wivu discovery timeout."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsWivuTimeout:Z

    .line 1754
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v9, :cond_19

    .line 1755
    :cond_18
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->saveLimitedApInfo()V
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1000(Lcom/htc/server/WfdStateMachine;)V

    .line 1756
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 1757
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 1760
    :cond_19
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v9}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifidisplayApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1761
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->isCt1Timeout:Z

    .line 1762
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestCT2OnDemand()V
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1100(Lcom/htc/server/WfdStateMachine;)V

    .line 1763
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->preloadDlnaService()V
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$1200(Lcom/htc/server/WfdStateMachine;)V

    .line 1764
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mControlApState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1765
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x7

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1767
    :cond_1a
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1c

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1772
    :sswitch_7
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v9, :cond_1b

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1b

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v9, :cond_1d

    .line 1773
    :cond_1b
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v9, :cond_1c

    .line 1774
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x43

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1775
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    .line 1776
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x4

    const/4 v11, 0x0

    #calls: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;IZ)V

    .line 1790
    :goto_9
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 1791
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 1778
    :cond_1c
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x4

    const/4 v11, 0x1

    #calls: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_9

    .line 1781
    :cond_1d
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v10, 0x38

    if-ne v9, v10, :cond_1e

    .line 1782
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x3b

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1788
    :goto_a
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x4

    const/4 v11, 0x0

    #calls: Lcom/htc/server/WfdStateMachine;->reportErrorCode(IZ)V
    invoke-static {v9, v10, v11}, Lcom/htc/server/WfdStateMachine;->access$2200(Lcom/htc/server/WfdStateMachine;IZ)V

    goto :goto_9

    .line 1783
    :cond_1e
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_1f

    .line 1784
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x22

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_a

    .line 1786
    :cond_1f
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x24

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto :goto_a

    .line 1794
    :sswitch_8
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===> Receive disabled state in DiscovererWivu state, selectDongle() again"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1796
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WFD]===> select dongle ssid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bssid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :try_start_3
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v10, v10, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1800
    :catch_3
    move-exception v3

    .line 1801
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1806
    .end local v3           #ex:Ljava/lang/Exception;
    :sswitch_9
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===> Receive WiFi disabled state in DiscovererWivu state! ResetStateMachine()"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v9}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_0

    .line 1810
    :sswitch_a
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v9, v9, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v9, :cond_26

    .line 1811
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v11, v11, Lcom/htc/server/WfdStateMachine;->mNetworkType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1813
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi reconnected, auto Mirroring, select dongle ssid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bssid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v11, v11, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v11, v11, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :try_start_4
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    iget-object v10, v10, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1820
    :goto_b
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v9}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v5

    .line 1821
    .local v5, iface:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1822
    .local v1, currentIsSta:Z
    if-eqz v5, :cond_20

    .line 1823
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current wivu interface is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v1, 0x1

    .line 1828
    :cond_20
    :goto_c
    if-eqz v1, :cond_25

    .line 1829
    sget-boolean v9, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v9, :cond_24

    .line 1830
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1831
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_22

    .line 1832
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    const-wide/32 v11, 0x9c40

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1817
    .end local v1           #currentIsSta:Z
    .end local v5           #iface:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 1818
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 1824
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #currentIsSta:Z
    .restart local v5       #iface:Ljava/lang/String;
    :cond_21
    const/4 v1, 0x0

    goto :goto_c

    .line 1834
    :cond_22
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v9, :cond_23

    .line 1835
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/16 v11, 0x4e20

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1837
    :cond_23
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x4e20

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1841
    :cond_24
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1842
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x35

    const-wide/16 v11, 0x2710

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    .line 1843
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/32 v11, 0x9c40

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1847
    :cond_25
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->removeMessages(I)V

    .line 1848
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x30

    const-wide/32 v11, 0x15f90

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1852
    .end local v1           #currentIsSta:Z
    .end local v5           #iface:Ljava/lang/String;
    :cond_26
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v9, v9, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-nez v9, :cond_0

    .line 1853
    const-string v9, "WfdStateMachine"

    const-string v10, "[WFD]===>CMD_NOTIFY_NETWORK_CHANGE: mCurrentDongle is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1858
    :sswitch_b
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 1859
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1860
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1863
    :sswitch_c
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0xd

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v9, v10}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_0

    .line 1866
    :sswitch_d
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1867
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1870
    :sswitch_e
    const-string v9, "WfdStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP is disabled during DiscoverWivu: configure = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v11, v11, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", discover = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v11, v11, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v9, :cond_27

    .line 1873
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1874
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1875
    :cond_27
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v9, v9, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v9, :cond_0

    .line 1876
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v10, v10, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1877
    iget-object v9, p0, Lcom/htc/server/WfdStateMachine$DiscoverWivuState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1884
    :sswitch_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1559
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_b
        0x6 -> :sswitch_9
        0xa -> :sswitch_e
        0x1c -> :sswitch_0
        0x1e -> :sswitch_6
        0x1f -> :sswitch_a
        0x20 -> :sswitch_5
        0x21 -> :sswitch_8
        0x27 -> :sswitch_c
        0x28 -> :sswitch_d
        0x30 -> :sswitch_7
        0x32 -> :sswitch_f
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
        0x38 -> :sswitch_f
        0x3b -> :sswitch_3
        0x3c -> :sswitch_4
        0x64 -> :sswitch_f
    .end sparse-switch
.end method
