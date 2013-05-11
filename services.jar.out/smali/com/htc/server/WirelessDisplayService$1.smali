.class Lcom/htc/server/WirelessDisplayService$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2253
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2256
    const-string v0, "WirelessDisplayService"

    const-string v1, "Receive INTERT_SYSTEM_NOTIFY_TURNOFF_HOTSPOT_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2261
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2262
    new-instance v0, Lcom/htc/server/WirelessDisplayService$1$1;

    invoke-direct {v0, p0}, Lcom/htc/server/WirelessDisplayService$1$1;-><init>(Lcom/htc/server/WirelessDisplayService$1;)V

    invoke-virtual {v0}, Lcom/htc/server/WirelessDisplayService$1$1;->start()V

    .line 2273
    :cond_0
    return-void
.end method
