.class Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;


# direct methods
.method constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 532
    invoke-static {}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHtcAccessory"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    invoke-static {p2}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/bluetooth/accessory/IHtcAccessory;

    move-result-object v1

    #setter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;
    invoke-static {v0, v1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$102(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;Lcom/htc/bluetooth/accessory/IHtcAccessory;)Lcom/htc/bluetooth/accessory/IHtcAccessory;

    .line 534
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    #getter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    invoke-static {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$200(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    #getter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    invoke-static {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$200(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;->onServiceConnected()V

    .line 536
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 538
    invoke-static {}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHtcAccessory"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    const/4 v1, 0x0

    #setter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;
    invoke-static {v0, v1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$102(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;Lcom/htc/bluetooth/accessory/IHtcAccessory;)Lcom/htc/bluetooth/accessory/IHtcAccessory;

    .line 540
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    #getter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    invoke-static {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$200(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    #getter for: Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    invoke-static {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->access$200(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;->onServiceDisconnected()V

    .line 542
    :cond_1
    return-void
.end method
