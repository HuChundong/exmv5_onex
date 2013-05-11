.class Lcom/htc/server/WirelessDisplayService$15;
.super Ljava/lang/Object;
.source "WirelessDisplayService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
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
    .line 2623
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$15;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 2625
    const-string v0, "WirelessDisplayService"

    const-string v1, "Connected to WHDMI WfdService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$15;->this$0:Lcom/htc/server/WirelessDisplayService;

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/htc/server/WirelessDisplayService;->access$2602(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2627
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 2630
    const-string v0, "WirelessDisplayService"

    const-string v1, "Disconnected to WHDMI WfdService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$15;->this$0:Lcom/htc/server/WirelessDisplayService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$2602(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2632
    return-void
.end method
