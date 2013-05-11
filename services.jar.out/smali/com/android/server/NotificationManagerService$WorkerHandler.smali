.class final Lcom/android/server/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1001
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1004
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NotificationManagerService$ToastRecord;

    #calls: Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V

    goto :goto_0

    .line 1008
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 1010
    const-string v0, "NotificationService"

    const-string v1, "flash timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateBatteryLight()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)V

    goto :goto_0

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
