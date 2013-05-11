.class Lcom/android/server/BatteryService$WirelessChargingTimerThread;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WirelessChargingTimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 944
    const-wide/16 v2, 0xfa0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.server.batteryservice.action.SHOW_WIRELESS_CHARGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v0, cancelIntent:Landroid/content/Intent;
    const-string v2, "isCancel"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 952
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wireless charger] run(), isInterruptShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    const-string v2, "isInterruptShowing"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isShowingInPopingDialog:Z
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    .line 962
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mWirelessChargerStatus:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v3

    #calls: Lcom/android/server/BatteryService;->sendShowWirelessChargingIntent(I)V
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;I)V

    .line 964
    iget-object v2, p0, Lcom/android/server/BatteryService$WirelessChargingTimerThread;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isInterruptShowing:Z
    invoke-static {v2, v5}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 966
    :cond_2
    return-void

    .line 945
    .end local v0           #cancelIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 946
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
