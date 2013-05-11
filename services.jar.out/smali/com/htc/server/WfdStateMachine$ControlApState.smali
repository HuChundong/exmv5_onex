.class Lcom/htc/server/WfdStateMachine$ControlApState;
.super Lcom/htc/server/State;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlApState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1103
    const-string v0, "WfdStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlApState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/16 v8, 0xb

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/16 v6, 0x1c

    .line 1107
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlApState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1226
    const-string v1, "WfdStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/server/WfdStateMachine$ControlApState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " drop message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move v1, v2

    .line 1228
    :sswitch_0
    return v1

    .line 1110
    :sswitch_1
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->setL2peApInfo()V
    invoke-static {v1}, Lcom/htc/server/WfdStateMachine;->access$1800(Lcom/htc/server/WfdStateMachine;)V

    .line 1111
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v3, 0x3

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1112
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1113
    .local v0, wifiApConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Enable AP mode..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-nez v1, :cond_1

    .line 1115
    const-string v1, "WfdStateMachine"

    const-string v3, "Set WIFI_AP_ENABLED bit."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 1117
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v3, 0x4

    #calls: Lcom/htc/server/WfdStateMachine;->sendNotificationState(I)V
    invoke-static {v1, v3}, Lcom/htc/server/WfdStateMachine;->access$100(Lcom/htc/server/WfdStateMachine;I)V

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-nez v1, :cond_2

    .line 1120
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MLHD_NOWPS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    #calls: Lcom/htc/server/WfdStateMachine;->getNoWpsApSsid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$1900(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    #calls: Lcom/htc/server/WfdStateMachine;->getNoWpsApKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/server/WfdStateMachine;->access$2000(Lcom/htc/server/WfdStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1127
    :goto_1
    new-instance v1, Lcom/htc/server/WfdStateMachine$ControlApState$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/server/WfdStateMachine$ControlApState$1;-><init>(Lcom/htc/server/WfdStateMachine$ControlApState;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1}, Lcom/htc/server/WfdStateMachine$ControlApState$1;->start()V

    goto/16 :goto_0

    .line 1124
    :cond_2
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Is Old CaviumDongle: goes for User AP profile"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1146
    .end local v0           #wifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===>Enable AP mode successfully."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsUnlockSucceed:Z

    if-eqz v1, :cond_6

    .line 1148
    :cond_4
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->notifyConcurrentEnabled(Z)V
    invoke-static {v1, v2}, Lcom/htc/server/WfdStateMachine;->access$400(Lcom/htc/server/WfdStateMachine;Z)V

    .line 1149
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mControlWpsState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1150
    sget-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v1, :cond_5

    .line 1151
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1, v8}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1153
    :cond_5
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v8, v3, v4}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1154
    :cond_6
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsDiscovering:Z

    if-eqz v1, :cond_a

    .line 1155
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1157
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsConnectionRequest:Z

    if-eqz v1, :cond_7

    .line 1158
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x3b

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1164
    :cond_7
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-ne v1, v3, :cond_8

    .line 1166
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1167
    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2d7

    if-ne v1, v3, :cond_9

    .line 1168
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1170
    :cond_9
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$1300(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1173
    :cond_a
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v1, v1, Lcom/htc/server/WfdStateMachine;->mIsUnlockDongle:Z

    if-eqz v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1175
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1179
    :sswitch_3
    new-instance v1, Lcom/htc/server/WfdStateMachine$ControlApState$2;

    invoke-direct {v1, p0}, Lcom/htc/server/WfdStateMachine$ControlApState$2;-><init>(Lcom/htc/server/WfdStateMachine$ControlApState;)V

    invoke-virtual {v1}, Lcom/htc/server/WfdStateMachine$ControlApState$2;->start()V

    goto/16 :goto_0

    .line 1195
    :sswitch_4
    const-string v3, "WfdStateMachine"

    const-string v4, "[WFD]===>Disable AP mode successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsConfiguring:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsOldCaviumDongle:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #calls: Lcom/htc/server/WfdStateMachine;->isAphConnectable(Z)Z
    invoke-static {v3, v2}, Lcom/htc/server/WfdStateMachine;->access$500(Lcom/htc/server/WfdStateMachine;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    if-nez v3, :cond_b

    .line 1198
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1199
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mDiscoverWivuState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1200
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    #getter for: Lcom/htc/server/WfdStateMachine;->mStaInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/WfdStateMachine;->access$000(Lcom/htc/server/WfdStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1201
    :cond_b
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsResetting:Z

    if-eqz v3, :cond_c

    .line 1202
    const-string v1, "WfdStateMachine"

    const-string v3, "Clear WIFI_AP_ENABLED bit."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mResetBit:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1204
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkResetState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1205
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1206
    :cond_c
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v3, v3, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    if-eqz v3, :cond_0

    .line 1207
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsChangingProfile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-boolean v5, v5, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iput-boolean v1, v3, Lcom/htc/server/WfdStateMachine;->mIsChangingProfile:Z

    .line 1209
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/4 v3, 0x7

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/server/WfdStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1213
    :sswitch_5
    const-string v1, "WfdStateMachine"

    const-string v3, "[WFD]===> Receive WiFi disabled state in DiscovererWivu state! ResetStateMachine()"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v1}, Lcom/htc/server/WfdStateMachine;->resetStateMachine()V

    goto/16 :goto_0

    .line 1222
    :sswitch_6
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mLinkInitState:Lcom/htc/server/State;

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->transitionTo(Lcom/htc/server/IState;)V

    .line 1223
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Lcom/htc/server/WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1108
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0x28 -> :sswitch_6
        0x32 -> :sswitch_0
        0x38 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
