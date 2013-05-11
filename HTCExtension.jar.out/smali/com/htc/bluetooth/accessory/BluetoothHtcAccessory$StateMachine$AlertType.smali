.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$AlertType;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertType"
.end annotation


# static fields
.field public static final ALERT_ALARM_ALERT:B = 0x3t

.field public static final ALERT_CALENDAR_REMINDER:B = 0x2t

.field public static final ALERT_NEW_MESSAGE:B = 0x0t

.field public static final ALERT_OTHER_NOTIFICATIONS:B = 0x1t


# instance fields
.field final synthetic this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine$AlertType;->this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$StateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
