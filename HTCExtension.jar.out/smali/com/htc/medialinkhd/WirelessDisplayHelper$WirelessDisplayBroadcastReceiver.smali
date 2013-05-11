.class Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/WirelessDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WirelessDisplayBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/medialinkhd/WirelessDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/medialinkhd/WirelessDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/WirelessDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/medialinkhd/WirelessDisplayHelper;Lcom/htc/medialinkhd/WirelessDisplayHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/medialinkhd/WirelessDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 418
    iget-object v6, p0, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/WirelessDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v6}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->access$100(Lcom/htc/medialinkhd/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v6, "mirror_display_status"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 422
    .local v1, inMirror:Z
    const-string v6, "mirror_display_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 424
    .local v5, state:I
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eq v9, v5, :cond_2

    const/4 v6, 0x3

    if-ne v6, v5, :cond_3

    .line 430
    :cond_2
    iget-object v6, p0, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/WirelessDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v6}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->access$100(Lcom/htc/medialinkhd/WirelessDisplayHelper;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/service/WirelessDisplayManager;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, addrIP:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 434
    .local v3, longIP:J
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", IP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v6, p0, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/medialinkhd/WirelessDisplayHelper;

    #getter for: Lcom/htc/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    invoke-static {v6}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->access$200(Lcom/htc/medialinkhd/WirelessDisplayHelper;)Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    move-result-object v2

    .line 437
    .local v2, listener:Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    if-eqz v2, :cond_0

    .line 438
    invoke-interface {v2, v1, v3, v4}, Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;->onMirrorStatusChange(ZJ)V

    goto :goto_0

    .line 442
    .end local v0           #addrIP:Ljava/lang/String;
    .end local v2           #listener:Lcom/htc/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    .end local v3           #longIP:J
    :cond_3
    const-string v6, "WirelessDisplayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
