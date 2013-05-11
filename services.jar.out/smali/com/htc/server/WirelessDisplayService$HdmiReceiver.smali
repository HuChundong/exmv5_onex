.class public Lcom/htc/server/WirelessDisplayService$HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdmiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, action:Ljava/lang/String;
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HdmiReceiver atcion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const-string v5, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2199
    const-string v5, "state"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2200
    .local v4, plug:I
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 2201
    .local v1, curMirrState:I
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    .line 2202
    .local v2, debug:[Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plug: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    .line 2203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curMirrState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 2204
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$HdmiReceiver;->this$0:Lcom/htc/server/WirelessDisplayService;

    const-string v6, "HdmiReceiver"

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v5, v6, v2}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    if-ne v4, v8, :cond_1

    .line 2206
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2209
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2210
    if-eq v1, v8, :cond_0

    .line 2211
    const-string v5, "WirelessDisplayService"

    const-string v6, "HdmiReceiver: HDMI is plugged STOP Everything"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2213
    .local v3, msgHdmi:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2225
    .end local v1           #curMirrState:I
    .end local v2           #debug:[Ljava/lang/Object;
    .end local v3           #msgHdmi:Landroid/os/Message;
    .end local v4           #plug:I
    :cond_0
    :goto_0
    return-void

    .line 2215
    .restart local v1       #curMirrState:I
    .restart local v2       #debug:[Ljava/lang/Object;
    .restart local v4       #plug:I
    :cond_1
    if-nez v4, :cond_2

    .line 2216
    const-string v5, "WirelessDisplayService"

    const-string v6, "HdmiReceiver: HDMI is un-plugged"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2218
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 2222
    :cond_2
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HdmiReceiver: what is this state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
