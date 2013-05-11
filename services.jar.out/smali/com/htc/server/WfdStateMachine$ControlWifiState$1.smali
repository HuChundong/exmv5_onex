.class Lcom/htc/server/WfdStateMachine$ControlWifiState$1;
.super Ljava/lang/Thread;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WfdStateMachine$ControlWifiState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/WfdStateMachine$ControlWifiState;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine$ControlWifiState;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlWifiState;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1041
    sget-boolean v0, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlWifiState;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "WfdStateMachine"

    const-string v1, "Disable Wifi AP fialed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$ControlWifiState$1;->this$1:Lcom/htc/server/WfdStateMachine$ControlWifiState;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine$ControlWifiState;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    const-string v0, "WfdStateMachine"

    const-string v1, "Enable wifi failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_1
    return-void
.end method
