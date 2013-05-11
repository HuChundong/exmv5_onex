.class Lcom/htc/server/WirelessDisplayService$16;
.super Landroid/os/HandlerThread;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2813
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$16;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 2816
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2817
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$16;->this$0:Lcom/htc/server/WirelessDisplayService;

    #calls: Lcom/htc/server/WirelessDisplayService;->initInThread()V
    invoke-static {v0}, Lcom/htc/server/WirelessDisplayService;->access$8700(Lcom/htc/server/WirelessDisplayService;)V

    .line 2818
    return-void
.end method
