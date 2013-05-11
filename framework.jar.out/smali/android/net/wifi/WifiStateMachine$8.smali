.class Landroid/net/wifi/WifiStateMachine$8;
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
    .line 1263
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1266
    const-string/jumbo v1, "mirror_display_status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1267
    .local v0, mirrorStatus:Z
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setMirrorStatusCommand(Z)Z

    .line 1270
    :cond_0
    return-void
.end method
