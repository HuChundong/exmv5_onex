.class Landroid/telephony/PhoneStateListener$1;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDisconnected(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/high16 v1, -0x8000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 519
    return-void
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 5
    .parameter "cfi"

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v2, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    return-void

    :cond_0
    move v0, v1

    .line 482
    goto :goto_0
.end method

.method public onCallForwardingIndicatorChangedExt(ZI)V
    .locals 0
    .parameter "cfi"
    .parameter "phoneType"

    .prologue
    .line 545
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 493
    return-void
.end method

.method public onCallStateChangedExt(ILjava/lang/String;I)V
    .locals 0
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneType"

    .prologue
    .line 553
    return-void
.end method

.method public onCellInfoChanged(Landroid/telephony/CellInfo;)V
    .locals 3
    .parameter "cellInfo"

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 514
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 488
    .local v0, location:Landroid/telephony/CellLocation;
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, v1, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 489
    return-void
.end method

.method public onCellLocationChangedExt(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "bundle"
    .parameter "phoneType"

    .prologue
    .line 549
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    .line 501
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 502
    return-void
.end method

.method public onDataActivityExt(II)V
    .locals 0
    .parameter "direction"
    .parameter "phoneType"

    .prologue
    .line 561
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 496
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 498
    return-void
.end method

.method public onDataConnectionStateChangedExt(III)V
    .locals 0
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneType"

    .prologue
    .line 557
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 5
    .parameter "mwi"

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v2, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    return-void

    :cond_0
    move v0, v1

    .line 470
    goto :goto_0
.end method

.method public onMessageWaitingIndicatorChangedEnhanced(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 476
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public onMessageWaitingIndicatorChangedExt(ZI)V
    .locals 0
    .parameter "mwi"
    .parameter "phoneType"

    .prologue
    .line 541
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .parameter "otaspMode"

    .prologue
    .line 509
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 510
    return-void
.end method

.method public onPreciseCallStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 522
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 523
    return-void
.end method

.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "voiceServiceState"
    .parameter "dataServiceState"

    .prologue
    const/4 v3, 0x0

    .line 528
    const/4 v1, 0x2

    new-array v0, v1, [[Landroid/telephony/ServiceState;

    .line 529
    .local v0, serviceStates:[[Landroid/telephony/ServiceState;
    aput-object p1, v0, v3

    .line 530
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 531
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, v1, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x2000

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    return-void
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 0
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    .line 537
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 4
    .parameter "asu"

    .prologue
    .line 466
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 467
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 506
    return-void
.end method

.method public onSignalStrengthsChangedExt(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .parameter "signalStrength"
    .parameter "phoneType"

    .prologue
    .line 565
    return-void
.end method
