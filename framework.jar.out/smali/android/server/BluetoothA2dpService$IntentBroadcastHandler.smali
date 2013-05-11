.class Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;-><init>(Landroid/server/BluetoothA2dpService;)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 923
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 926
    iget-object v1, p0, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$1100(Ljava/lang/String;)V

    .line 929
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[embedded] A2DP state : address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, p3, p2}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 933
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 937
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 943
    :goto_0
    return-void

    .line 939
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    .line 940
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
