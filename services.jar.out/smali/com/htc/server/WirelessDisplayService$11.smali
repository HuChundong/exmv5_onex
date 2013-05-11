.class Lcom/htc/server/WirelessDisplayService$11;
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
    .line 2446
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$11;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 2449
    const-string v1, "config_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2450
    .local v0, configState:I
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.htc.wifidisplay.CONFIGURE_STATE_CHANGED_ACTION. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$11;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static {v1}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2452
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v1

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2453
    :cond_0
    return-void
.end method
