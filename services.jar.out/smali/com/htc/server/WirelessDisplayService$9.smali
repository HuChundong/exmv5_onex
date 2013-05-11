.class Lcom/htc/server/WirelessDisplayService$9;
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
    .line 2393
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2396
    const-string v1, "WirelessDisplayService"

    const-string v2, "Receive Configuration Tool notify update dongle state to paired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const-string v1, "dongleStaBssid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    .local v0, dongleStaBssid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2399
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$9;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->updateDongleStateToPaired(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/server/WirelessDisplayService;->access$8100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 2400
    :cond_0
    return-void
.end method
