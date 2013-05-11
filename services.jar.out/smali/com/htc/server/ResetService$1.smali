.class Lcom/htc/server/ResetService$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/ResetService;


# direct methods
.method constructor <init>(Lcom/htc/server/ResetService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, state:I
    const-string v2, "ResetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi state changed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mResetWifi:Z
    invoke-static {v2}, Lcom/htc/server/ResetService;->access$000(Lcom/htc/server/ResetService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    iget-object v2, v2, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    #setter for: Lcom/htc/server/ResetService;->mResetWifi:Z
    invoke-static {v2, v5}, Lcom/htc/server/ResetService;->access$002(Lcom/htc/server/ResetService;Z)Z

    .line 57
    const-string v2, "ResetService"

    const-string v3, "[WFD]===>Wifi is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-boolean v2, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v2, :cond_2

    const-string v2, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-boolean v2, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :cond_3
    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .restart local v1       #state:I
    const-string v2, "ResetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi AP state changed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mResetAp:Z
    invoke-static {v2}, Lcom/htc/server/ResetService;->access$100(Lcom/htc/server/ResetService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mResetWifi:Z
    invoke-static {v2}, Lcom/htc/server/ResetService;->access$000(Lcom/htc/server/ResetService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    iget-object v2, v2, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    #setter for: Lcom/htc/server/ResetService;->mResetAp:Z
    invoke-static {v2, v5}, Lcom/htc/server/ResetService;->access$102(Lcom/htc/server/ResetService;Z)Z

    .line 70
    const-string v2, "ResetService"

    const-string v3, "[WFD]===>Wifi AP is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/htc/server/ResetService$1;->this$0:Lcom/htc/server/ResetService;

    iget-object v2, v2, Lcom/htc/server/ResetService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
