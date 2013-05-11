.class Lcom/htc/server/WfdStateMachine$LinkOnState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1422
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkOnState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0x2c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1426
    const-string v4, "WfdStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkOnState;->getName()Ljava/lang/String;

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

    .line 1428
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, iface:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1431
    .local v0, currentIsSta:Z
    if-eqz v1, :cond_0

    .line 1432
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

    .line 1433
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 1437
    :cond_0
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1510
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$LinkOnState;->getName()Ljava/lang/String;

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

    :cond_1
    :goto_1
    move v3, v2

    .line 1512
    :sswitch_0
    return v3

    :cond_2
    move v0, v3

    .line 1433
    goto :goto_0

    .line 1439
    :sswitch_1
    const-string v4, "WfdStateMachine"

    const-string v5, "[WFD]===>Mirror mode is on."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v4, :cond_4

    .line 1442
    :cond_3
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    .line 1443
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    .line 1447
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    if-eqz v4, :cond_4

    .line 1448
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentDongle:Lcom/htc/service/DongleInfo;

    #calls: Lcom/htc/server/WfdStateMachine;->updatePairedDongle(Lcom/htc/service/DongleInfo;)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$2300(Lcom/htc/server/WfdStateMachine;Lcom/htc/service/DongleInfo;)V

    .line 1452
    :cond_4
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    .line 1453
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x1c

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1454
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start mirror mode in LinkOn state, current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mCurrentPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1463
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v3, :cond_1

    .line 1464
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1472
    :sswitch_2
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v3, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1474
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1478
    :sswitch_3
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v4, :cond_5

    .line 1479
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v4, v3}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    goto/16 :goto_1

    .line 1481
    :cond_5
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_1

    .line 1485
    :sswitch_4
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0xd

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    goto/16 :goto_1

    .line 1489
    :sswitch_5
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v4, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v4, :cond_6

    .line 1490
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mPreviousPage:I

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1491
    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v3, v4, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    goto/16 :goto_1

    .line 1492
    :cond_6
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v3, v3, Lcom/htc/server/WfdStateMachine;->mEntryMode:I

    if-nez v3, :cond_7

    .line 1493
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1494
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0xb

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v3, v4}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1495
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v3, :cond_1

    .line 1496
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1498
    :cond_7
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1499
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 1500
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v3, :cond_1

    .line 1501
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$LinkOnState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v3, v7}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1437
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_3
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x27 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_0
        0x38 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
