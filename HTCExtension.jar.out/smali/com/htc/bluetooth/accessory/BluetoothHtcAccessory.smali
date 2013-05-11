.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Calendar;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Message;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "com.htc.accessory.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_REGISTER_DATA_READY:Ljava/lang/String; = "com.htc.accessory.action.REGISTER_DATA_READY"

.field public static final CMD_COMMAND_MASK:I = 0xff

.field public static final CMD_FUNCTION_CALENDAR:I = 0x300

.field public static final CMD_FUNCTION_MASK:I = 0xff00

.field public static final CMD_FUNCTION_MESSAGE:I = 0x100

.field public static final CMD_FUNCTION_PHONE:I = 0x200

.field public static final CMD_FUNCTION_STATE_MACHINE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_DATA_TICKET:Ljava/lang/String; = "dataTicket"

.field public static final FLAG_ACCESSORY_NOTIFICATION:B = 0x6t

.field public static final FLAG_ACCESSORY_REQUEST:B = 0x4t

.field public static final FLAG_ACCESSORY_RESPONSE:B = 0x5t

.field public static final FLAG_DIRECTION_A2P:B = 0x4t

.field public static final FLAG_DIRECTION_P2A:B = 0x0t

.field public static final FLAG_PHONE_NOTIFICATION:B = 0x2t

.field public static final FLAG_PHONE_REQUEST:B = 0x0t

.field public static final FLAG_PHONE_RESPONSE:B = 0x1t

.field public static final FLAG_TYPE_NOTIFICATION:B = 0x2t

.field public static final FLAG_TYPE_REQUEST:B = 0x0t

.field public static final FLAG_TYPE_RESPONSE:B = 0x1t

.field public static final PERM_RECEIVE_DATA:Ljava/lang/String; = "com.htc.accessory.permission.RECEIVE_DATA"

.field public static final RESPONSE_FAIL:I = 0x1

.field public static final RESPONSE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHtcAccessory"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

.field private mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;-><init>(Landroid/content/Context;Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;)V

    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 564
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;

    invoke-direct {v1, p0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$1;-><init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)V

    iput-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mConnection:Landroid/content/ServiceConnection;

    .line 565
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mContext:Landroid/content/Context;

    .line 566
    iput-object p2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    .line 567
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.accessory"

    const-string v2, "com.htc.accessory.HtcAccessoryService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Could not bind to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;Lcom/htc/bluetooth/accessory/IHtcAccessory;)Lcom/htc/bluetooth/accessory/IHtcAccessory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;

    return-object v0
.end method

.method public static constructPacketData([BBI)[B
    .locals 8
    .parameter "data"
    .parameter "flag"
    .parameter "cmdId"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, output:[B
    if-nez p0, :cond_0

    .line 686
    const/16 v1, 0x9

    new-array v0, v1, [B

    .line 690
    :goto_0
    const/16 v1, 0x55

    aput-byte v1, v0, v3

    .line 691
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    .line 693
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 694
    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 695
    const/4 v1, 0x3

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 696
    if-nez p0, :cond_1

    .line 697
    aput-byte v3, v0, v4

    .line 698
    aput-byte v3, v0, v5

    .line 699
    aput-byte v3, v0, v6

    .line 700
    aput-byte v3, v0, v7

    .line 708
    :goto_1
    return-object v0

    .line 688
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x9

    new-array v0, v1, [B

    goto :goto_0

    .line 702
    :cond_1
    array-length v1, p0

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 703
    array-length v1, p0

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 704
    array-length v1, p0

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 705
    array-length v1, p0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 706
    const/16 v1, 0x8

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public static getCmdId([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 717
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static getContentData([B)[B
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    .line 726
    array-length v1, p0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x0

    .line 729
    :goto_0
    return-object v0

    .line 727
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x9

    new-array v0, v1, [B

    .line 728
    .local v0, output:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private isBluetoothOff()Z
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBluetoothOn()Z
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcAccessoryProfileSupported(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 645
    if-nez p0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, deviceName:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHtcAccessoryProfileSupported deviceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2
    if-eqz v0, :cond_0

    const-string v2, "Sonic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "HTC mini"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStateMachineExtensionNeeded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 663
    if-nez p0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v1

    .line 666
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, deviceName:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStateMachineExtensionNeeded deviceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_2
    if-eqz v0, :cond_0

    const-string v2, "HTC mini"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 885
    if-nez p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public broadcastSppData([BBI)Z
    .locals 5
    .parameter "data"
    .parameter "flag"
    .parameter "cmdId"

    .prologue
    const/4 v1, 0x0

    .line 800
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastSppData cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v2, :cond_2

    .line 803
    :try_start_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->broadcastSppData([BBI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    const/4 v1, 0x1

    .line 811
    :cond_1
    :goto_0
    return v1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "Not attached to HtcAccessoryService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHtcAccessory"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mConnection:Landroid/content/ServiceConnection;

    .line 636
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mServiceListener:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$ServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 738
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v2, p1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    const/4 v1, 0x1

    .line 749
    :cond_1
    :goto_0
    return v1

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 748
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "Not attached to HtcAccessoryService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 776
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v2, p1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    const/4 v1, 0x1

    .line 787
    :cond_1
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 786
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "Not attached to HtcAccessoryService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnectAll()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 756
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "disconnectAll()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v2, :cond_2

    .line 759
    :try_start_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v2}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->disconnectAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    const/4 v1, 0x1

    .line 767
    :cond_1
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "Not attached to HtcAccessoryService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccessoryData(J)Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    .locals 4
    .parameter "ticket"

    .prologue
    .line 846
    sget-boolean v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSppData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_1

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v1, p1, p2}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->getSppData(J)Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 855
    :goto_0
    return-object v1

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v1, :cond_2

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Not attached to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    sget-boolean v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "getConnectedDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Not attached to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 615
    sget-boolean v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectionState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Not attached to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v1, p1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 625
    :goto_0
    return v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    sget-boolean v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "getConnectedDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Not attached to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v1, p1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 606
    :goto_0
    return-object v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isRegisterReady()Z
    .locals 3

    .prologue
    .line 862
    sget-boolean v1, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "isRegisterReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_1

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v1}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->isRegisterReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :goto_0
    return v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHtcAccessory"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v1, :cond_2

    const-string v1, "BluetoothHtcAccessory"

    const-string v2, "Not attached to HtcAccessoryService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAccessoryData(Landroid/bluetooth/BluetoothDevice;[BBI)Z
    .locals 5
    .parameter "device"
    .parameter "data"
    .parameter "flag"
    .parameter "cmdId"

    .prologue
    const/4 v1, 0x0

    .line 826
    sget-boolean v2, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSppData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/htc/bluetooth/accessory/IHtcAccessory;->sendSppData(Landroid/bluetooth/BluetoothDevice;[BBI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    const/4 v1, 0x1

    .line 837
    :cond_1
    :goto_0
    return v1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothHtcAccessory"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;->mService:Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-nez v2, :cond_1

    const-string v2, "BluetoothHtcAccessory"

    const-string v3, "Not attached to HtcAccessoryService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
