.class Lcom/htc/server/WirelessDisplayService$1$1;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/WirelessDisplayService$1;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$1$1;->this$1:Lcom/htc/server/WirelessDisplayService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2265
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1$1;->this$1:Lcom/htc/server/WirelessDisplayService$1;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2266
    const-string v0, "WirelessDisplayService"

    const-string v1, "Disable AP fialed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1$1;->this$1:Lcom/htc/server/WirelessDisplayService$1;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mTurnOffHotspotWakeLock:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2268
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$1$1;->this$1:Lcom/htc/server/WirelessDisplayService$1;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$1;->this$0:Lcom/htc/server/WirelessDisplayService;

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2270
    :cond_0
    return-void
.end method
