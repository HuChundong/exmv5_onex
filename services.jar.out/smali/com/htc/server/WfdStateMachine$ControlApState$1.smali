.class Lcom/htc/server/WfdStateMachine$ControlApState$1;
.super Ljava/lang/Thread;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WfdStateMachine$ControlApState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

.field final synthetic val$wifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine$ControlApState;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

    iput-object p2, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->val$wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1130
    sget-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v1, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1132
    .local v0, wifiState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1134
    :cond_0
    const-string v1, "WfdStateMachine"

    const-string v2, "[WFD]===>Concurrent isn\'t supported, disable wifi first."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1139
    :cond_1
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->val$wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1143
    .end local v0           #wifiState:I
    :goto_0
    return-void

    .line 1141
    :cond_2
    iget-object v1, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlApState;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine$ControlApState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v1, v1, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/htc/server/WfdStateMachine$ControlApState$1;->val$wifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method
