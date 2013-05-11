.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$AlertType;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$KeyEvent;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$KeyState;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$Notification;,
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$RequestResponse;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 452
    return-void
.end method
