.class Lcom/htc/server/WfdStateMachine$7;
.super Ljava/lang/Thread;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WfdStateMachine;->requestUnlockOnDemand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2681
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2686
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mUnlockDongle:Lcom/htc/service/DongleInfo;

    iget-object v0, v3, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    .line 2687
    .local v0, bssid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_channel"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2690
    .local v1, channel:I
    add-int/lit16 v1, v1, 0x100

    .line 2692
    iget-object v3, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v3, v3, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v4, v4, Lcom/htc/server/WfdStateMachine;->mUnlockPattern:[B

    iget-object v5, p0, Lcom/htc/server/WfdStateMachine$7;->this$0:Lcom/htc/server/WfdStateMachine;

    iget v5, v5, Lcom/htc/server/WfdStateMachine;->mUnlockTransactionID:I

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiDisplayConfigure(ILjava/lang/String;[BI)Z

    move-result v2

    .line 2693
    .local v2, ret:Z
    const-string v3, "WfdStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>requestUnlockOnDemand() ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", channel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    return-void
.end method
