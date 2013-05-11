.class Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcMobileNetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/HtcMobileNetworkEngine;


# direct methods
.method private constructor <init>(Landroid/net/HtcMobileNetworkEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/HtcMobileNetworkEngine;Landroid/net/HtcMobileNetworkEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;-><init>(Landroid/net/HtcMobileNetworkEngine;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->isInitialStickyBroadcast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    #calls: Landroid/net/HtcMobileNetworkEngine;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    invoke-static {p2}, Landroid/net/HtcMobileNetworkEngine;->access$200(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 118
    .local v3, state:Landroid/net/NetworkInfo$State;
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, reason:Ljava/lang/String;
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, capability:Ljava/lang/String;
    const-string/jumbo v5, "networkUnvailable"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 122
    .local v4, unavailable:Z
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$400(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    #setter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$302(Landroid/net/HtcMobileNetworkEngine;Z)Z

    .line 123
    invoke-static {}, Landroid/net/HtcMobileNetworkEngine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    const-string v6, "HtcMobileNetworkEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " broadcast - state = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", unavailable = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", capability = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4

    const-string v5, "(unspecified)"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", reason = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_5

    const-string v5, "(unspecified)"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mCheckState = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v7}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const-string v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 131
    :cond_1
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    invoke-static {v5, v3, v2}, Landroid/net/HtcMobileNetworkEngine;->access$500(Landroid/net/HtcMobileNetworkEngine;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    .line 152
    .end local v1           #capability:Ljava/lang/String;
    .end local v2           #reason:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    .end local v4           #unavailable:Z
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$100(Landroid/net/HtcMobileNetworkEngine;)V

    .line 154
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #capability:Ljava/lang/String;
    .restart local v2       #reason:Ljava/lang/String;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    .restart local v4       #unavailable:Z
    :cond_4
    move-object v5, v1

    .line 124
    goto :goto_0

    :cond_5
    move-object v5, v2

    goto :goto_1

    .line 135
    .end local v1           #capability:Ljava/lang/String;
    .end local v2           #reason:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    .end local v4           #unavailable:Z
    :cond_6
    const-string v5, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 136
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v5

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$400(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    if-eq v5, v6, :cond_7

    .line 137
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->getPersistedMobileDataEnabled()Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$400(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    #setter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$302(Landroid/net/HtcMobileNetworkEngine;Z)Z

    .line 138
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    iget-object v6, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->mCheckState:Z
    invoke-static {v6}, Landroid/net/HtcMobileNetworkEngine;->access$300(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->onCheckStateChange(Z)V

    .line 140
    :cond_7
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$600(Landroid/net/HtcMobileNetworkEngine;)I

    goto :goto_2

    .line 141
    :cond_8
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 142
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkSummaryPolicy()I
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$600(Landroid/net/HtcMobileNetworkEngine;)I

    goto :goto_2

    .line 143
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 144
    invoke-static {}, Landroid/net/HtcMobileNetworkEngine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "HtcMobileNetworkEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasReceivedHtcSIMIntent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z
    invoke-static {v7}, Landroid/net/HtcMobileNetworkEngine;->access$700(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "get sim state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_a
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #getter for: Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z
    invoke-static {v5}, Landroid/net/HtcMobileNetworkEngine;->access$700(Landroid/net/HtcMobileNetworkEngine;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    .line 148
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-static {}, Landroid/net/HtcMobileNetworkEngine;->access$000()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "HtcMobileNetworkEngine"

    const-string/jumbo v6, "receive com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_c
    iget-object v5, p0, Landroid/net/HtcMobileNetworkEngine$ConnectivityReceiver;->this$0:Landroid/net/HtcMobileNetworkEngine;

    const/4 v6, 0x1

    #setter for: Landroid/net/HtcMobileNetworkEngine;->hasReceivedHtcSIMIntent:Z
    invoke-static {v5, v6}, Landroid/net/HtcMobileNetworkEngine;->access$702(Landroid/net/HtcMobileNetworkEngine;Z)Z

    goto/16 :goto_2
.end method
