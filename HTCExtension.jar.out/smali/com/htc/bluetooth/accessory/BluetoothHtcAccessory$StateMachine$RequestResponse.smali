.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$RequestResponse;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestResponse"
.end annotation


# static fields
.field public static final RQ_CMD_DEVICE_INFO:B = 0x5t

.field public static final RQ_CMD_END_KEY_SLEEP:B = -0x7ft

.field public static final RQ_CMD_FIND_PHONE:B = 0x4t

.field public static final RQ_CMD_GET_FRAME_BUFFER:B = 0x6t

.field public static final RQ_CMD_KEY_EVENT:B = 0x1t

.field public static final RQ_CMD_PROTOCOL_VERSION:B = 0x2t

.field public static final RQ_CMD_SWITCH_SPEAKER:B = -0x7dt

.field public static final RQ_CMD_SYNC_SETTINGS:B = 0x7t

.field public static final RQ_CMD_SYNC_TIME:B = 0x3t

.field public static final RQ_CMD_UPDATE_SETTINGS:B = -0x7et


# instance fields
.field final synthetic this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$RequestResponse;->this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
