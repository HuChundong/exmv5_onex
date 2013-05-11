.class Lcom/htc/server/WirelessDisplayService$10;
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
    .line 2422
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2425
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive com.htc.wifidisplay.SWITCH_ON_OFF_MIRROR_MODE intent. mirrorOnOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wfdservice_usable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",finger_gesture_enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2428
    const-string v2, "WirelessDisplayService"

    const-string v3, "Stop mirror mode from notification indicator."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2433
    const-string v2, "WirelessDisplayService"

    const-string v3, "Sending connecting intent from notification indicator."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_MIRROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2435
    .local v1, connectingIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2437
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, ae:Landroid/content/ActivityNotFoundException;
    const-string v2, "WirelessDisplayService"

    const-string v3, "ActivityNotFoundException, intent: com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_MIRROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
