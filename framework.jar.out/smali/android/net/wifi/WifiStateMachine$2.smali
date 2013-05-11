.class Landroid/net/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x2001d

    .line 1133
    const-string v2, "availableArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1135
    .local v1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "activeArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1143
    .local v0, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 1145
    :cond_0
    const-string v2, "WifiStateMachine"

    const-string v3, "For TI solution, send out CMD_TETHER_STATE_CHANGE immediately"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v1, v0}, Landroid/net/wifi/WifiStateMachine$TetherStateChange;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1152
    :goto_0
    return-void

    .line 1148
    :cond_1
    const-string v2, "WifiStateMachine"

    const-string v3, "For BRCM, QCM solution, delay 3 sec to send CMD_TETHER_STATE_CHANGE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v1, v0}, Landroid/net/wifi/WifiStateMachine$TetherStateChange;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method
