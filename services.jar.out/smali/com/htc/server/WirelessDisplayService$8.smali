.class Lcom/htc/server/WirelessDisplayService$8;
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
    .line 2373
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 2376
    const-string v2, "extra_pincode_check_result"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2377
    .local v1, pinCodeCheckResult:Z
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive Configuration Tool notify INTENT_PINCODE_CHECK_DONE, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Mirror State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-virtual {v2, v5}, Lcom/htc/server/WirelessDisplayService;->startPatternLockFakeMirror(Z)V

    .line 2380
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v2, v5}, Lcom/htc/server/WirelessDisplayService;->access$8000(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 2381
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2382
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v0, mirrorResultIntent:Landroid/content/Intent;
    const-string v2, "RESULT"

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2384
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$8;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2386
    .end local v0           #mirrorResultIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
