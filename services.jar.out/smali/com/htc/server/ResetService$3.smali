.class Lcom/htc/server/ResetService$3;
.super Ljava/lang/Thread;
.source "ResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/ResetService;->requestResetOnDemand()V
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
    .line 242
    iput-object p1, p0, Lcom/htc/server/ResetService$3;->this$0:Lcom/htc/server/ResetService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 247
    iget-object v3, p0, Lcom/htc/server/ResetService$3;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mDongleBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/server/ResetService;->access$500(Lcom/htc/server/ResetService;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, bssid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/server/ResetService$3;->this$0:Lcom/htc/server/ResetService;

    invoke-virtual {v3}, Lcom/htc/server/ResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_channel"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 251
    .local v1, channel:I
    add-int/lit16 v1, v1, 0x300

    .line 252
    iget-object v3, p0, Lcom/htc/server/ResetService$3;->this$0:Lcom/htc/server/ResetService;

    #getter for: Lcom/htc/server/ResetService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/htc/server/ResetService;->access$600(Lcom/htc/server/ResetService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiDisplayConfigure(Landroid/net/wifi/WifiManager;ILjava/lang/String;)Z

    move-result v2

    .line 253
    .local v2, ret:Z
    const-string v3, "ResetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WFD]===>requestResetOnDemand() ret = "

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

    .line 254
    return-void
.end method
