.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$Notification;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# static fields
.field public static final N_CMD_FAMEBUFFER_UPDATE:B = 0x1t

.field public static final N_CMD_NOTIFICATION_ALERT:B = 0x5t

.field public static final N_CMD_NOTIFICATION_CONNECTION_ACTION:B = 0x7t

.field public static final N_CMD_NOTIFICATION_DFU:B = 0x8t

.field public static final N_CMD_NOTIFICATION_DIAL:B = 0xat

.field public static final N_CMD_NOTIFICATION_JOIN_CALLS:B = 0x4t

.field public static final N_CMD_NOTIFICATION_LED_BLINK:B = 0x6t

.field public static final N_CMD_NOTIFICATION_LOG:B = -0x7ft

.field public static final N_CMD_NOTIFICATION_LOW_BATERRY:B = 0x11t

.field public static final N_CMD_NOTIFICATION_MUTE_INCOMING_CALL:B = 0x9t

.field public static final N_CMD_NOTIFICATION_MUTE_MICROPHONE:B = 0xbt

.field public static final N_CMD_NOTIFICATION_SWAP_CALLS:B = 0x3t

.field public static final N_CMD_SHOW_INDICATOR:B = 0x2t


# instance fields
.field final synthetic this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$Notification;->this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
