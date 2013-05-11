.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone$Notification;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# static fields
.field public static final N_CMD_NOTIFICATION_CALL_LOG:B = 0x1t


# instance fields
.field final synthetic this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone$Notification;->this$1:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
