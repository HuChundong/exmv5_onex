.class public Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice$Beats;,
        Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice$Bose;
    }
.end annotation


# static fields
.field public static final ACTION_DISAPPEARED:Ljava/lang/String; = "android.bluetooth.device.action.DISAPPEARED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_PROFILE_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.device.action.PROFILE_DISCONNECTED"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final EXTRA_AG_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.AG_STATE"

.field public static final EXTRA_OUT_RANGE:Ljava/lang/String; = "android.bluetooth.device.extra.OUT_RANGE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "android.bluetooth.device.extra.PROFILE"

.field public static final GENERIC_DEVICE:I = 0x0

.field public static final PROFILE_A2DP:I = 0x2

.field public static final PROFILE_HEADSET:I = 0x1

.field public static final PROFILE_HID:I = 0x4

.field public static final PROFILE_OPP:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    return v0
.end method

.method public static getUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 1
    .parameter "device"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public static identifyDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/high16 v3, 0x2

    const/high16 v2, 0x1

    const/4 v1, 0x0

    .line 122
    if-nez p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, deviceName:Ljava/lang/String;
    const-string v4, "Bose SoundDock10"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const v1, 0x10001

    goto :goto_0

    .line 130
    :cond_2
    const-string v4, "Bose SoundLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    const v1, 0x10002

    goto :goto_0

    .line 132
    :cond_3
    const-string v4, "Bose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const-string v4, "BOSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    const-string v2, "Beats Wireless"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    const v1, 0x20001

    goto :goto_0

    .line 138
    :cond_6
    const-string v2, "Beatbox Portable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    const v1, 0x20002

    goto :goto_0

    .line 140
    :cond_7
    const-string v2, "BeatsPill"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    const v1, 0x20003

    goto :goto_0

    .line 142
    :cond_8
    const-string v2, "Beats"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_9
    const-string v2, "BEATS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 145
    goto :goto_0
.end method
