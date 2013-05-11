.class Landroid/net/wifi/WifiStateMachine$13;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 8665
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 8668
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-nez v1, :cond_1

    .line 8689
    :cond_0
    :goto_0
    return-void

    .line 8671
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8673
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8674
    const-string v1, "WifiStateMachine"

    const-string v2, "get intent wimax enabled changed action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8675
    const-string v1, "curWimaxEnabledState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 8677
    const-string v1, "WifiStateMachine"

    const-string v2, "Wimax Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8678
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$8102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8679
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWimaxStatus(Z)Z

    goto :goto_0

    .line 8681
    :cond_2
    const-string v1, "curWimaxEnabledState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 8683
    const-string v1, "WifiStateMachine"

    const-string v2, "Wimax Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8684
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$8102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8685
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$13;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setWimaxStatus(Z)Z

    goto :goto_0
.end method
