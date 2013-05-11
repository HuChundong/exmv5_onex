.class Lcom/android/server/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1014
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Intent received: ACTION_QUICKBOOT_POWERON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3600(Lcom/android/server/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi starting up interrupted, need to restart it"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v1, 0xf

    .line 1019
    .local v1, waitSecond:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-lez v1, :cond_0

    .line 1020
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quickboot - Wait for the end of interrupted wifi starting up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1029
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi enabled, restart wifi again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2, v5}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1031
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2, v6}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1034
    .end local v1           #waitSecond:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z
    invoke-static {v2, v5}, Lcom/android/server/WifiService;->access$3702(Lcom/android/server/WifiService;Z)Z

    .line 1035
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 1040
    iget-object v2, p0, Lcom/android/server/WifiService$7;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1041
    .local v0, mWDManager:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_2

    .line 1042
    const-string v2, "WifiService"

    const-string v3, "setFingerGestureEnable to true"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v0, v6}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V

    .line 1046
    :cond_2
    return-void

    .line 1023
    .end local v0           #mWDManager:Lcom/htc/service/WirelessDisplayManager;
    .restart local v1       #waitSecond:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
