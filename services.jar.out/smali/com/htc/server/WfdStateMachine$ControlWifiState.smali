.class Lcom/htc/server/WfdStateMachine$ControlWifiState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlWifiState"
.end annotation


# instance fields
.field ret:Z

.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1018
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1024
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1028
    const-string v2, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1094
    const-string v0, "WfdStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drop message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v0, v1

    .line 1096
    :sswitch_0
    return v0

    .line 1031
    :sswitch_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v0, v1}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1032
    const-string v0, "WfdStateMachine"

    const-string v2, "Enable wifi mode..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-nez v0, :cond_1

    .line 1034
    const-string v0, "WfdStateMachine"

    const-string v2, "Set WIFI_ENABLED bit."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1037
    :cond_1
    new-instance v0, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;-><init>(Lcom/htc/server/WfdStateMachine$ControlWifiState;)V

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;->start()V

    goto :goto_0

    .line 1053
    :sswitch_2
    const-string v2, "WfdStateMachine"

    const-string v3, "Disable wifi mode..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    const-string v0, "WfdStateMachine"

    const-string v2, "Disable wifi failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
    :sswitch_3
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v2, 0x2

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v0, v2}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1059
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v0, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1061
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    .line 1069
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsReConfiguring:Z

    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->requestWpsOnDemand()V
    invoke-static {v0}, Lcom/htc/server/WfdStateMachine;->access$200(Lcom/htc/server/WfdStateMachine;)V

    .line 1071
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1072
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x11

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsRequestScanning:Z

    if-eqz v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1065
    const-string v0, "WfdStateMachine"

    const-string v2, "Enabled Wifi first, Trigger Full Channle Scan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1074
    :cond_4
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    goto/16 :goto_0

    .line 1079
    :sswitch_4
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-eqz v0, :cond_5

    .line 1080
    const-string v0, "WfdStateMachine"

    const-string v2, "Clear WIFI_ENABLED bit."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 1082
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v2, v2, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1083
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1084
    :cond_5
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v0, v0, Lcom/htc/server/WfdStateMachine;->mIsResettingDongle:Z

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v2, 0x3

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1029
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_4
        0x32 -> :sswitch_0
        0x38 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
