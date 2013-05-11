.class public abstract Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;
.super Landroid/os/Binder;
.source "IHtcAccessory.java"

# interfaces
.implements Lcom/htc/bluetooth/accessory/IHtcAccessory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/IHtcAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.bluetooth.accessory.IHtcAccessory"

.field static final TRANSACTION_broadcastSppData:I = 0x4

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_disconnectAll:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x8

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x9

.field static final TRANSACTION_getSppData:I = 0x6

.field static final TRANSACTION_isRegisterReady:I = 0xa

.field static final TRANSACTION_sendSppData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p0, p0, v0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/bluetooth/accessory/IHtcAccessory;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/bluetooth/accessory/IHtcAccessory;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/bluetooth/accessory/IHtcAccessory;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 55
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 61
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->disconnectAll()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 76
    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 82
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 86
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 88
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->broadcastSppData([BBI)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:B
    .end local v3           #_arg2:I
    :sswitch_5
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 104
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 106
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 108
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 109
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->sendSppData(Landroid/bluetooth/BluetoothDevice;[BBI)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 101
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:B
    .end local v4           #_arg3:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 115
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v9, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 118
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->getSppData(J)Lcom/htc/bluetooth/accessory/HtcAccessoryData;

    move-result-object v5

    .line 119
    .local v5, _result:Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v5, p3, v8}, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:J
    .end local v5           #_result:Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    :sswitch_7
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 134
    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 139
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 140
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #_result:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 146
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    .line 148
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 154
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_9
    const-string v7, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 157
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v6

    .line 158
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:[I
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_a
    const-string v9, "com.htc.bluetooth.accessory.IHtcAccessory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/bluetooth/accessory/IHtcAccessory$Stub;->isRegisterReady()Z

    move-result v5

    .line 166
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v5, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
