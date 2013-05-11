.class Landroid/server/BluetoothService$2;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 668
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 670
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 671
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 672
    const-string v6, "BluetoothService"

    const-string v7, "Received MESSAGE_UUID_INTENT  message"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 676
    const-string v6, "BluetoothService"

    const-string v7, "BT is power off, stop updateDeviceServiceChannelCache"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_1
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 680
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 681
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothService$RemoteService;

    .line 682
    .local v5, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v6, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 683
    const-string v6, "BluetoothService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service Results not received, obtain from Cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v7, v5, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    goto :goto_1

    .line 692
    .end local v5           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_3
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 693
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 698
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 699
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, attempt:I
    if-lez v1, :cond_4

    const/4 v6, 0x2

    if-gt v1, v6, :cond_4

    .line 706
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 707
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 710
    :cond_4
    if-lez v1, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #attempt:I
    :sswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 714
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v7, v8, v6}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;II)V

    goto/16 :goto_0

    .line 717
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :sswitch_3
    const-string v6, "BluetoothService"

    const-string v7, "Received BT_BOOTUP message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 720
    .local v2, bluetoothOn:I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 721
    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v9, v9}, Landroid/server/BluetoothService;->enable(ZZ)Z

    goto/16 :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
