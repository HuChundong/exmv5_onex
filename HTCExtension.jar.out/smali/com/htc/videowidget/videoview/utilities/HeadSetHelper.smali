.class public Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;,
        Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    }
.end annotation


# static fields
.field private static final HEADSET_STATE_CONNECTED:I = 0x1

.field private static final HEADSET_STATE_DISCONNECTED:I = 0x2

.field private static final HEADSET_STATE_UNKNOW:I = 0x0

.field public static final HEADSET_TYPE_BT:I = 0x1

.field public static final HEADSET_TYPE_WIRED:I = 0x0

.field private static final NOTIFY_APP_NAME:Ljava/lang/String; = "HtcBeatsNotify"

.field private static final TAG:Ljava/lang/String; = "HeadSetHelper"

.field private static mIsBTConnect:I

.field private static mIsBeatsPillConnect:Z

.field private static mIsHeadsetPlug:I

.field private static mLastConnectDevice:I


# instance fields
.field private final DEVICE_OUT_ANLG_DOCK_HEADSET:I

.field private final DEVICE_OUT_AUX_DIGITAL:I

.field private final DEVICE_OUT_BLUETOOTH_A2DP:I

.field private final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I

.field private final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I

.field private final DEVICE_OUT_BLUETOOTH_SCO:I

.field private final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I

.field private final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I

.field private final DEVICE_OUT_DEFAULT:I

.field private final DEVICE_OUT_DGTL_DOCK_HEADSET:I

.field private final DEVICE_OUT_EARPIECE:I

.field private final DEVICE_OUT_SPEAKER:I

.field private final DEVICE_OUT_USB_ACCESSORY:I

.field private final DEVICE_OUT_USB_DEVICE:I

.field private final DEVICE_OUT_WIRED_HEADPHONE:I

.field private final DEVICE_OUT_WIRED_HEADSET:I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothAdapterListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

.field private mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    .line 60
    sput v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    .line 61
    sput-boolean v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    .line 67
    sput v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_EARPIECE:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_SPEAKER:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_WIRED_HEADSET:I

    .line 37
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_WIRED_HEADPHONE:I

    .line 38
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_SCO:I

    .line 39
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I

    .line 40
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I

    .line 41
    const/16 v0, 0x80

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_A2DP:I

    .line 42
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I

    .line 43
    const/16 v0, 0x200

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I

    .line 45
    const/16 v0, 0x400

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_AUX_DIGITAL:I

    .line 46
    const/16 v0, 0x800

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_ANLG_DOCK_HEADSET:I

    .line 47
    const/16 v0, 0x1000

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_DGTL_DOCK_HEADSET:I

    .line 48
    const/16 v0, 0x2000

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_USB_ACCESSORY:I

    .line 49
    const/16 v0, 0x4000

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_USB_DEVICE:I

    .line 50
    const/high16 v0, 0x8

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->DEVICE_OUT_DEFAULT:I

    .line 63
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    .line 64
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    .line 65
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    .line 70
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 71
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapterListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 302
    return-void
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->checkIsBeatsPill()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    return p0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-boolean p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    return p0
.end method

.method private checkIsBeatsPill()V
    .locals 6

    .prologue
    .line 369
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    .line 370
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 373
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_1

    .line 375
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 377
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothDevice;->identifyDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const v4, 0x20003

    if-ne v3, v4, :cond_0

    .line 379
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    .line 385
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, "HeadSetHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkIsBeatsPill], result =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private getDeviceString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 90
    sparse-switch p1, :sswitch_data_0

    .line 108
    const-string v0, "UNKNOW"

    :goto_0
    return-object v0

    .line 92
    :sswitch_0
    const-string v0, "DEVICE_OUT_EARPIECE"

    goto :goto_0

    .line 93
    :sswitch_1
    const-string v0, "DEVICE_OUT_SPEAKER"

    goto :goto_0

    .line 94
    :sswitch_2
    const-string v0, "DEVICE_OUT_WIRED_HEADSET"

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v0, "DEVICE_OUT_WIRED_HEADPHONE"

    goto :goto_0

    .line 96
    :sswitch_4
    const-string v0, "DEVICE_OUT_BLUETOOTH_SCO"

    goto :goto_0

    .line 97
    :sswitch_5
    const-string v0, "DEVICE_OUT_BLUETOOTH_SCO_HEADSET"

    goto :goto_0

    .line 98
    :sswitch_6
    const-string v0, "DEVICE_OUT_BLUETOOTH_SCO_CARKIT"

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP"

    goto :goto_0

    .line 100
    :sswitch_8
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    goto :goto_0

    .line 101
    :sswitch_9
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER"

    goto :goto_0

    .line 102
    :sswitch_a
    const-string v0, "DEVICE_OUT_AUX_DIGITAL"

    goto :goto_0

    .line 103
    :sswitch_b
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER"

    goto :goto_0

    .line 104
    :sswitch_c
    const-string v0, "DEVICE_OUT_DGTL_DOCK_HEADSET"

    goto :goto_0

    .line 105
    :sswitch_d
    const-string v0, "DEVICE_OUT_USB_ACCESSORY"

    goto :goto_0

    .line 106
    :sswitch_e
    const-string v0, "DEVICE_OUT_USB_DEVICE"

    goto :goto_0

    .line 107
    :sswitch_f
    const-string v0, "DEVICE_OUT_DEFAULT"

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x80000 -> :sswitch_f
    .end sparse-switch
.end method

.method public static getLastConnectDevice()I
    .locals 3

    .prologue
    .line 205
    const-string v0, "HeadSetHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getLastConnectDevice], return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    return v0
.end method

.method private getStreamOutDeviceType(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 361
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 362
    .local v0, am:Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 363
    .local v1, i:I
    const-string v2, "HeadSetHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStreamOutDeviceType], return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->getDeviceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return v1
.end method

.method public static isBeatsPillConnect(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    const-string v0, "HeadSetHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isBeatsPillConnect], return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-boolean v0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    return v0
.end method

.method public static isBluetoothDeviceConnect(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, b:Z
    sget v2, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    if-nez v2, :cond_2

    .line 117
    if-eqz p0, :cond_1

    .line 119
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 120
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    .line 130
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    const-string v2, "HeadSetHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isBTHeadsetPlugged], mIsBTConnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v1

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_2
    sget v2, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 126
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :cond_3
    sget v2, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBtBeatsHeadsetPlugged(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 179
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 180
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    move v1, v4

    .line 193
    :goto_0
    return v1

    .line 184
    :cond_0
    move-object v3, v0

    .line 185
    .local v3, ifam:Landroid/media/HtcIfAudioManager;
    :try_start_0
    invoke-interface {v3}, Landroid/media/HtcIfAudioManager;->isBeatsHeadsetBT()Z

    move-result v1

    .line 186
    .local v1, b:Z
    const-string v5, "HeadSetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isBtBeatsHeadsetPlugged] return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1           #b:Z
    :catch_0
    move-exception v2

    .line 191
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "HeadSetHelper"

    const-string v6, "Exception in isBeatsHeadsetPlugged()"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v4

    .line 193
    goto :goto_0
.end method

.method public static isHeadsetPlugged(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, b:Z
    sget v3, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    if-nez v3, :cond_2

    .line 139
    if-eqz p0, :cond_1

    .line 141
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 142
    .local v0, audioManager:Landroid/media/AudioManager;
    move-object v2, v0

    .line 143
    .local v2, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v2}, Landroid/media/HtcIfAudioManager;->isHeadsetPlugged()Z

    move-result v1

    .line 153
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #ifam:Landroid/media/HtcIfAudioManager;
    :cond_0
    :goto_0
    const-string v3, "HeadSetHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isHeadsetPlugged], mIsHeadsetPlug = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return v1

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :cond_2
    sget v3, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 149
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    :cond_3
    sget v3, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;)V
    .locals 11
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 211
    const-string v7, "HeadSetHelper"

    const-string v8, "[startMonitor]"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    .line 218
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v7, :cond_2

    .line 220
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 221
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapterListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, p1, v8, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 226
    :cond_2
    :try_start_0
    const-string v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 227
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    :goto_1
    sput v7, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    .line 228
    const-string v7, "HeadSetHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[startMonitor], isBTConnect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object v3, v0

    .line 230
    .local v3, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v3}, Landroid/media/HtcIfAudioManager;->isHeadsetPlugged()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    sput v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    .line 231
    const-string v5, "HeadSetHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[startMonitor], isHeadsetPlugged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #ifam:Landroid/media/HtcIfAudioManager;
    :goto_2
    sget v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    if-ne v5, v6, :cond_4

    sget v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    if-ne v5, v6, :cond_4

    .line 243
    const-string v5, "HeadSetHelper"

    const-string v7, "[startMonitor], wire headset and A2DP device connected both"

    invoke-static {v5, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->getStreamOutDeviceType(Landroid/content/Context;)I

    move-result v4

    .line 245
    .local v4, outputDevice:I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 247
    sput v10, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    .line 248
    const-string v5, "HeadSetHelper"

    const-string v6, "[startMonitor], mLastConnectDevice = HEADSET_TYPE_WIRED"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v4           #outputDevice:I
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    if-nez v5, :cond_7

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v1, commandFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v5, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    new-instance v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    invoke-direct {v5, p0}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;-><init>(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V

    iput-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    .line 265
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v1           #commandFilter:Landroid/content/IntentFilter;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_5
    move v7, v5

    .line 227
    goto/16 :goto_1

    .line 233
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 235
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const-string v5, "HeadSetHelper"

    const-string v7, "[startMonitor], get BT connect failed"

    invoke-static {v5, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sput v10, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    .line 238
    sput v10, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    goto :goto_2

    .line 252
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #outputDevice:I
    :cond_6
    sput v6, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mLastConnectDevice:I

    .line 253
    const-string v5, "HeadSetHelper"

    const-string v6, "[startMonitor], mLastConnectDevice = HEADSET_TYPE_BT"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 269
    .end local v4           #outputDevice:I
    :cond_7
    const-string v5, "HeadSetHelper"

    const-string v6, "[startMonitor]someone called this twice?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stopMonitor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 275
    const-string v1, "HeadSetHelper"

    const-string v2, "[stopMonitor]"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 278
    const-string v1, "HeadSetHelper"

    const-string v2, "ignore stopMonitor(), mContext == null"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    if-eqz v1, :cond_1

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    :goto_0
    sput v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBTConnect:I

    .line 294
    sput v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsHeadsetPlug:I

    .line 295
    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mContext:Landroid/content/Context;

    .line 296
    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;

    .line 297
    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 298
    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 299
    sput-boolean v5, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mIsBeatsPillConnect:Z

    .line 300
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 289
    const-string v1, "HeadSetHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startMonitor]someone called this twice?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
