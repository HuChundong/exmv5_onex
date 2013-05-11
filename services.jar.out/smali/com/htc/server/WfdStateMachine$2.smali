.class Lcom/htc/server/WfdStateMachine$2;
.super Ljava/lang/Thread;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WfdStateMachine;->forceUpdateDongles()V
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
    .line 2553
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$2;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$2;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/htc/server/WfdStateMachine$2;->this$0:Lcom/htc/server/WfdStateMachine;

    iget-object v0, v0, Lcom/htc/server/WfdStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->startDongleScan(Landroid/net/wifi/WifiManager;)Z

    .line 2560
    :cond_0
    return-void
.end method
