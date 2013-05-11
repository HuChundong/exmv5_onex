.class Landroid/server/BluetoothService$1;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothService;->initAfterRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 388
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->enableNative()I

    .line 392
    const-string v0, "BluetoothService"

    const-string v1, "Bluetoothd Enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 394
    const-string v0, "BluetoothService"

    const-string v1, "Bluetoothd Disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->disableNative()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method
