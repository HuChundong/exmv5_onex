.class Lcom/android/internal/telephony/RIL$1;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    .line 386
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v5, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->sendScreenState(Z)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 354
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 355
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, bondState:I
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT device bondState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, bCheckFlag:Z
    if-eqz v3, :cond_4

    .line 362
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 364
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 365
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_3

    .line 367
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    const/4 v0, 0x1

    .line 380
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_2
    :goto_1
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bCheckFlag= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->sendCarkitState(Z)V
    invoke-static {v4, v0}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;Z)V

    goto :goto_0

    .line 372
    .restart local v2       #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_3
    const-string v4, "RILJ"

    const-string v5, "Get BT paired class is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_4
    const-string v4, "RILJ"

    const-string v5, "Get BT paired device is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 384
    .end local v0           #bCheckFlag:Z
    .end local v1           #bondState:I
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL received unexpected Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
