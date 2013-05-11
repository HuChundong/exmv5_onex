.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 6552
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 6555
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6556
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 6557
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 41
    .parameter "message"

    .prologue
    .line 6560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6565
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    sparse-switch v37, :sswitch_data_0

    .line 6933
    const/16 v37, 0x0

    .line 6935
    :goto_0
    return v37

    .line 6567
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v37

    const v38, 0x24007

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6935
    :cond_0
    :goto_1
    const/16 v37, 0x1

    goto :goto_0

    .line 6570
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v30

    .line 6573
    .local v30, state:Landroid/net/wifi/SupplicantState;
    invoke-static/range {v30 .. v30}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 6574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v37

    sget-object v38, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 6575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)V

    .line 6577
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Detected an interface down, restart driver"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const v38, 0x2000d

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 6588
    :cond_2
    sget-object v37, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v37

    sget-object v38, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_0

    .line 6590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)V

    .line 6592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6597
    .end local v30           #state:Landroid/net/wifi/SupplicantState;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 6600
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 6603
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 6611
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 6612
    .local v19, netId:I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 6615
    .local v12, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_3

    .line 6616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v23

    .line 6617
    .local v23, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 6620
    .end local v23           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v37

    if-eqz v37, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 6623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v37

    const v38, 0x25001

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const v38, 0x25003

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6628
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Failed to connect config: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " netId: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const v38, 0x25002

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v3, v39

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6635
    .end local v12           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v19           #netId:I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/net/wifi/WpsInfo;

    .line 6637
    .local v36, wpsInfo:Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 6648
    new-instance v23, Landroid/net/wifi/WpsResult;

    sget-object v37, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 6649
    .local v23, result:Landroid/net/wifi/WpsResult;
    const-string v37, "WifiStateMachine"

    const-string v38, "Invalid setup for WPS"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6652
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v37, v0

    sget-object v38, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_5

    .line 6653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const v38, 0x2500b

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    move-object/from16 v3, v23

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 6654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6639
    .end local v23           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v23

    .line 6640
    .restart local v23       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 6642
    .end local v23           #result:Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v23

    .line 6643
    .restart local v23       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 6645
    .end local v23           #result:Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v23

    .line 6646
    .restart local v23       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 6656
    :cond_5
    const-string v37, "WifiStateMachine"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Failed to start WPS with config "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const v38, 0x2500c

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v3, v39

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6664
    .end local v23           #result:Landroid/net/wifi/WpsResult;
    .end local v36           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :sswitch_7
    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v38, 0xda

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 6665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 6666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 6676
    :goto_3
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 6668
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_3

    .line 6671
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_3

    .line 6678
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Network connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$7502(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7402(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)V

    .line 6685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 6688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 6691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    sget-object v38, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 6692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6696
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Network connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;)V

    .line 6698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v38

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$16000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6702
    :sswitch_a
    sget-boolean v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v37, :cond_0

    .line 6703
    monitor-enter p0

    .line 6704
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v37

    const-string/jumbo v38, "phone"

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 6705
    .local v18, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "CTRL-RSP-"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6706
    .local v6, MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 6707
    monitor-exit p0

    goto/16 :goto_1

    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v18           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v37

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v37

    .line 6711
    :sswitch_b
    sget-boolean v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v37, :cond_0

    .line 6712
    monitor-enter p0

    .line 6713
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v37

    const-string/jumbo v38, "phone"

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 6714
    .restart local v18       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "CTRL-DAT-"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6716
    .restart local v6       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 6717
    monitor-exit p0

    goto/16 :goto_1

    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v18           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catchall_1
    move-exception v37

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v37

    .line 6721
    :sswitch_c
    sget-boolean v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v37, :cond_0

    .line 6722
    const-string v7, "CTRL-DAT-"

    .local v7, MsgDetail0:Ljava/lang/String;
    const-string v6, "FAIL"

    .line 6725
    .restart local v6       #MsgDetail:Ljava/lang/String;
    const/16 v31, 0x0

    .line 6726
    .local v31, szAutn:Ljava/lang/String;
    const/16 v37, 0x3

    :try_start_2
    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    .line 6728
    .local v32, szRand:[Ljava/lang/String;
    const-string/jumbo v37, "phone"

    invoke-static/range {v37 .. v37}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v20

    .line 6730
    .local v20, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const/4 v9, 0x0

    .line 6732
    .local v9, aszRspResult:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .local v34, szTmpMsg0:Ljava/lang/String;
    move-object/from16 v33, v34

    .line 6733
    .local v33, szTmpMsg:Ljava/lang/String;
    const/16 v37, 0x3a

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 6734
    .local v8, MsgEnd:I
    const/16 v37, -0x1

    move/from16 v0, v37

    if-ne v8, v0, :cond_8

    .line 6735
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v8

    .line 6736
    :cond_8
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6737
    add-int/lit8 v37, v8, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 6738
    const/16 v37, 0x3a

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 6739
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v8, v0, :cond_9

    .line 6740
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v32, v37

    .line 6741
    add-int/lit8 v37, v8, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 6744
    :cond_9
    const-string v37, "gsm.sim.types"

    const-string v38, ""

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 6747
    .local v24, simType:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 6748
    .local v26, simType3G:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 6749
    .local v25, simType2G:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 6750
    .local v27, simTypeDBDM:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 6752
    .local v28, simTypeWIBRO_ONLY:Ljava/lang/String;
    const-string v37, "AUTH_AKA-"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 6753
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_a

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 6754
    :cond_a
    move-object/from16 v31, v33

    .line 6756
    const/4 v11, 0x0

    .line 6757
    .local v11, bundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 6759
    .local v14, i:I
    const-string v37, "WifiStateMachine"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AKA: szRand[0] ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x0

    aget-object v39, v32, v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6760
    const-string v37, "WifiStateMachine"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AKA: szAutn = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v38, v32, v38

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v21

    .line 6763
    .local v21, rand:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v10

    .line 6764
    .local v10, autn:[B
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/htc/service/HtcTelephonyManager;->akaAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v11

    .line 6766
    if-eqz v11, :cond_c

    .line 6767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string/jumbo v38, "res"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v22

    .line 6768
    .local v22, res:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Ck"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 6769
    .local v4, Ck:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "Ik"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 6770
    .local v5, Ik:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "kc"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v17

    .line 6772
    .local v17, kc:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "OK:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6776
    const-string v37, "WifiStateMachine"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AKA: bundle != NULL, MsgDetail= "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6893
    .end local v4           #Ck:Ljava/lang/String;
    .end local v5           #Ik:Ljava/lang/String;
    .end local v8           #MsgEnd:I
    .end local v9           #aszRspResult:[Ljava/lang/String;
    .end local v10           #autn:[B
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v14           #i:I
    .end local v17           #kc:Ljava/lang/String;
    .end local v20           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v21           #rand:[B
    .end local v22           #res:Ljava/lang/String;
    .end local v24           #simType:Ljava/lang/String;
    .end local v25           #simType2G:Ljava/lang/String;
    .end local v26           #simType3G:Ljava/lang/String;
    .end local v27           #simTypeDBDM:Ljava/lang/String;
    .end local v28           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v32           #szRand:[Ljava/lang/String;
    .end local v33           #szTmpMsg:Ljava/lang/String;
    .end local v34           #szTmpMsg0:Ljava/lang/String;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 6779
    .restart local v8       #MsgEnd:I
    .restart local v9       #aszRspResult:[Ljava/lang/String;
    .restart local v10       #autn:[B
    .restart local v11       #bundle:Landroid/os/Bundle;
    .restart local v14       #i:I
    .restart local v20       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .restart local v21       #rand:[B
    .restart local v24       #simType:Ljava/lang/String;
    .restart local v25       #simType2G:Ljava/lang/String;
    .restart local v26       #simType3G:Ljava/lang/String;
    .restart local v27       #simTypeDBDM:Ljava/lang/String;
    .restart local v28       #simTypeWIBRO_ONLY:Ljava/lang/String;
    .restart local v32       #szRand:[Ljava/lang/String;
    .restart local v33       #szTmpMsg:Ljava/lang/String;
    .restart local v34       #szTmpMsg0:Ljava/lang/String;
    :cond_c
    :try_start_3
    const-string v37, "WifiStateMachine"

    const-string v38, "AKA: bundle == NULL "

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    const-string v6, "FAIL"

    goto :goto_4

    .line 6810
    .end local v10           #autn:[B
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v14           #i:I
    .end local v21           #rand:[B
    :cond_d
    const-string/jumbo v6, "null"

    goto :goto_4

    .line 6812
    :cond_e
    const-string v37, "AUTH_SIM-"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_b

    .line 6813
    const/16 v37, 0x3a

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 6814
    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v8, v0, :cond_f

    .line 6815
    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v32, v37

    .line 6816
    const/16 v37, 0x2

    add-int/lit8 v38, v8, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v32, v37

    .line 6819
    :cond_f
    const-string v6, "OK"

    .line 6820
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_5
    const/16 v37, 0x3

    move/from16 v0, v37

    if-ge v15, v0, :cond_b

    .line 6821
    aget-object v37, v32, v15

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x20

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    .line 6823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    aget-object v38, v32, v15

    #calls: Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B
    invoke-static/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v21

    .line 6824
    .restart local v21       #rand:[B
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/service/HtcTelephonyManager;->gsmAuthentication([B)Landroid/os/Bundle;

    move-result-object v11

    .line 6825
    .restart local v11       #bundle:Landroid/os/Bundle;
    if-eqz v11, :cond_10

    .line 6826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string/jumbo v38, "res"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v29

    .line 6827
    .local v29, sres:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    const-string v38, "kc"

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/net/wifi/WifiStateMachine;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v17

    .line 6829
    .restart local v17       #kc:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ":"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6820
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 6832
    .end local v17           #kc:Ljava/lang/String;
    .end local v29           #sres:Ljava/lang/String;
    :cond_10
    const-string v37, "WifiStateMachine"

    const-string v38, "AKA: bundle == NULL "

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6833
    const-string v6, "FAIL"

    .line 6834
    goto/16 :goto_4

    .line 6883
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v21           #rand:[B
    :cond_11
    const-string v6, "FAIL"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6884
    goto/16 :goto_4

    .line 6890
    .end local v8           #MsgEnd:I
    .end local v9           #aszRspResult:[Ljava/lang/String;
    .end local v15           #ii:I
    .end local v20           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v24           #simType:Ljava/lang/String;
    .end local v25           #simType2G:Ljava/lang/String;
    .end local v26           #simType3G:Ljava/lang/String;
    .end local v27           #simTypeDBDM:Ljava/lang/String;
    .end local v28           #simTypeWIBRO_ONLY:Ljava/lang/String;
    .end local v32           #szRand:[Ljava/lang/String;
    .end local v33           #szTmpMsg:Ljava/lang/String;
    .end local v34           #szTmpMsg0:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 6891
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 6897
    .end local v6           #MsgDetail:Ljava/lang/String;
    .end local v7           #MsgDetail0:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v31           #szAutn:Ljava/lang/String;
    :sswitch_d
    new-instance v16, Landroid/content/Intent;

    const-string v37, "com.htc.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6898
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6899
    const-string v37, "WifiStateMachine"

    const-string v38, "AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6902
    .end local v16           #intent:Landroid/content/Intent;
    :sswitch_e
    sget-boolean v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 6903
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v38 .. v38}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "airplane_mode_on"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6905
    .restart local v6       #MsgDetail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 6909
    .end local v6           #MsgDetail:Ljava/lang/String;
    :sswitch_f
    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 6910
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    .line 6911
    .local v35, typeData:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v37, "android.net.wifi.EAP_NOTIFICATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6912
    .restart local v16       #intent:Landroid/content/Intent;
    const-string/jumbo v37, "typeData"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6914
    const-string v37, "WifiStateMachine"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AKA: set intent EAP_NOTIFICATION_CHANGED_ACTION, "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6918
    .end local v16           #intent:Landroid/content/Intent;
    .end local v35           #typeData:Ljava/lang/String;
    :sswitch_10
    const-string v37, "WifiStateMachine"

    const-string v38, "PERF_LOCK_EVENT received"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v37

    if-nez v37, :cond_0

    .line 6920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6921
    const-string v37, "WifiStateMachine"

    const-string v38, "2nd CPU lock acquired"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6925
    :sswitch_11
    const-string v37, "WifiStateMachine"

    const-string v38, "PERF_UNLOCK_EVENT received"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v37

    if-eqz v37, :cond_0

    .line 6927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiStateMachine;->access$16200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6928
    const-string v37, "WifiStateMachine"

    const-string v38, "2nd CPU lock released"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6565
    :sswitch_data_0
    .sparse-switch
        0x20020 -> :sswitch_e
        0x20021 -> :sswitch_f
        0x2004a -> :sswitch_2
        0x2004b -> :sswitch_3
        0x2004c -> :sswitch_4
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_9
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x2400d -> :sswitch_a
        0x2400e -> :sswitch_b
        0x2400f -> :sswitch_c
        0x24010 -> :sswitch_d
        0x24011 -> :sswitch_10
        0x24012 -> :sswitch_11
        0x25001 -> :sswitch_5
        0x2500a -> :sswitch_6
    .end sparse-switch

    .line 6637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
