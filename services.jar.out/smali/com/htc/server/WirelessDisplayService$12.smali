.class Lcom/htc/server/WirelessDisplayService$12;
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
    .line 2460
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$12;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2463
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Direction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2464
    .local v2, direction:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AbsoluteDirection"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2465
    .local v0, absoluteDirection:I
    const-string v3, "WirelessDisplayService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive com.htc.action.MULTIPLE_FINGER_SWIPE_EVENT, Direction value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", absoluteDirection value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", finger_gesture_enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2468
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService$12;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v3, v6}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 2469
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    .line 2470
    .local v1, debug:[Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 2471
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "absoluteDirection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2472
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayService$12;->this$0:Lcom/htc/server/WirelessDisplayService;

    const-string v4, "MULTIPLE_FINGER_SWIPE_EVENT"

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v3, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2473
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v3

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v4

    const/16 v5, 0x71

    invoke-virtual {v4, v5, v0, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2474
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v3

    const/16 v4, 0x73

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2476
    .end local v1           #debug:[Ljava/lang/Object;
    :cond_0
    return-void
.end method
