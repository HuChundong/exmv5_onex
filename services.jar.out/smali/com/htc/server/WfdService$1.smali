.class Lcom/htc/server/WfdService$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdService;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive()...action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, state:I
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi state changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->notifyWifiStateChanged(I)V

    goto :goto_0

    .line 77
    .end local v2           #state:I
    :cond_2
    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->notifyApClientChanged()V

    goto :goto_0

    .line 79
    :cond_3
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-eqz v3, :cond_4

    const-string v3, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .restart local v2       #state:I
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiDisplay AP state changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->notifyWifiApStateChanged(I)V

    goto :goto_0

    .line 83
    .end local v2           #state:I
    :cond_4
    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    if-nez v3, :cond_5

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .restart local v2       #state:I
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi AP state changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->notifyWifiApStateChanged(I)V

    goto/16 :goto_0

    .line 87
    .end local v2           #state:I
    :cond_5
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 89
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/server/WfdStateMachine;->notifyNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 90
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v3, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 92
    :cond_7
    const-string v3, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 93
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 94
    :cond_8
    const-string v3, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 95
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/server/WfdStateMachine;->notifyWpsEvent(I)V

    goto/16 :goto_0

    .line 97
    :cond_9
    const-string v3, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    const-string v3, "WfdService"

    const-string v4, "Receive L2PE_SUCCESSFUL intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/server/WfdStateMachine;->notifyL2PEChangeEvent(Z)V

    goto/16 :goto_0

    .line 100
    :cond_a
    const-string v3, "android.net.hotspot.L2PE_FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 101
    const-string v3, "WfdService"

    const-string v4, "Receive L2PE_FAIL intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/server/WfdStateMachine;->notifyL2PEChangeEvent(Z)V

    goto/16 :goto_0

    .line 104
    :cond_b
    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 105
    const-string v3, "mirror_display_state"

    const/4 v4, 0x5

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .restart local v2       #state:I
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/server/WfdStateMachine;->notifyMirrorDisplayStateChanged(I)V

    goto/16 :goto_0

    .line 108
    .end local v2           #state:I
    :cond_c
    const-string v3, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 109
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->notifyDongleScanResultsAvailable()V

    goto/16 :goto_0

    .line 110
    :cond_d
    const-string v3, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 111
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->notifyWivuListChanged()V

    goto/16 :goto_0

    .line 112
    :cond_e
    const-string v3, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "WfdService"

    const-string v4, "[WFD]===>Receive dismiss connecting dialog intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/htc/server/WfdService$1;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v3}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/server/WfdStateMachine;->cancelConnectingDialog()V

    goto/16 :goto_0
.end method
