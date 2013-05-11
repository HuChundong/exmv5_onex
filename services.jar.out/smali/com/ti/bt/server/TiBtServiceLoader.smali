.class public Lcom/ti/bt/server/TiBtServiceLoader;
.super Ljava/lang/Object;
.source "TiBtServiceLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TiBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadServices(Landroid/content/Context;ILandroid/server/BluetoothService;)V
    .locals 0
    .parameter "context"
    .parameter "factoryTest"
    .parameter "bluetooth"

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/ti/bt/server/TiBtServiceLoader;->loadSystemServices(Landroid/content/Context;ILandroid/server/BluetoothService;)V

    .line 16
    return-void
.end method

.method private static loadSystemServices(Landroid/content/Context;ILandroid/server/BluetoothService;)V
    .locals 5
    .parameter "context"
    .parameter "factoryTest"
    .parameter "bluetooth"

    .prologue
    .line 19
    const-string v3, "TiBtServiceLoader"

    const-string v4, "Loading bluetooth services as system service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    :try_start_0
    new-instance v1, Landroid/server/BluetoothGattClientService;

    invoke-direct {v1, p0, p2}, Landroid/server/BluetoothGattClientService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0           #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    .local v1, bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    :try_start_1
    const-string v3, "bluetooth_gattclient"

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .end local v1           #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    :goto_0
    return-void

    .line 25
    .restart local v0       #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    :catch_0
    move-exception v2

    .line 26
    .local v2, t:Ljava/lang/Throwable;
    :goto_1
    const-string v3, "TiBtServiceLoader"

    const-string v4, "Error loading bluetooth services"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 25
    .end local v0           #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v1       #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    .restart local v0       #bluetoothGattClient:Landroid/server/BluetoothGattClientService;
    goto :goto_1
.end method
