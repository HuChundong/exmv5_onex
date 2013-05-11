.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 5720
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5720
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5723
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 5727
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5728
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 5731
    .local v25, dockState:I
    packed-switch v25, :pswitch_data_0

    .line 5746
    const/16 v22, 0x0

    .line 5748
    .local v22, config:I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v22

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6105
    .end local v22           #config:I
    .end local v25           #dockState:I
    :cond_0
    :goto_1
    return-void

    .line 5733
    .restart local v25       #dockState:I
    :pswitch_0
    const/16 v22, 0x7

    .line 5734
    .restart local v22       #config:I
    goto :goto_0

    .line 5736
    .end local v22           #config:I
    :pswitch_1
    const/16 v22, 0x6

    .line 5737
    .restart local v22       #config:I
    goto :goto_0

    .line 5739
    .end local v22           #config:I
    :pswitch_2
    const/16 v22, 0x8

    .line 5740
    .restart local v22       #config:I
    goto :goto_0

    .line 5742
    .end local v22           #config:I
    :pswitch_3
    const/16 v22, 0x9

    .line 5743
    .restart local v22       #config:I
    goto :goto_0

    .line 5749
    .end local v22           #config:I
    .end local v25           #dockState:I
    :cond_1
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5750
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 5752
    .local v35, state:I
    const/16 v24, 0x10

    .line 5753
    .local v24, device:I
    const/4 v13, 0x0

    .line 5755
    .local v13, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/bluetooth/BluetoothDevice;

    .line 5756
    .local v19, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v19, :cond_0

    .line 5760
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 5761
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v18

    .line 5762
    .local v18, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v18, :cond_2

    .line 5763
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 5802
    :cond_2
    :goto_2
    invoke-static {v13}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5803
    const-string v13, ""

    .line 5806
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ne v0, v2, :cond_9

    const/16 v23, 0x1

    .line 5808
    .local v23, connected:Z
    :goto_3
    if-eqz v23, :cond_a

    .line 5809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTComments:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5813
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTComments:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5814
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTComments:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 5815
    .local v21, comments:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v13, v21, v2

    .line 5816
    const/4 v2, 0x1

    aget-object v2, v21, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v23, 0x1

    .line 5817
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v23

    move/from16 v1, v24

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v2, v0, v1, v13}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 5819
    if-eqz v23, :cond_c

    .line 5820
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v19

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5825
    :goto_6
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5766
    .end local v21           #comments:[Ljava/lang/String;
    .end local v23           #connected:Z
    :sswitch_0
    const/16 v24, 0x20

    .line 5769
    const/4 v11, 0x0

    .line 5770
    .local v11, addr:Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ne v0, v2, :cond_5

    .line 5771
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add new bluetooth SCO headset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5775
    :cond_5
    if-nez v35, :cond_2

    .line 5776
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #addr:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 5790
    .restart local v11       #addr:Ljava/lang/String;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5791
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTComments:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 5780
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTHSStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 5781
    .local v12, addrIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5782
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #addr:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 5783
    .restart local v11       #addr:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5784
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 5797
    .end local v11           #addr:Ljava/lang/String;
    .end local v12           #addrIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :sswitch_1
    const/16 v24, 0x40

    goto/16 :goto_2

    .line 5806
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 5811
    .restart local v23       #connected:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHtcBTComments:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 5816
    .restart local v21       #comments:[Ljava/lang/String;
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 5822
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    .line 5829
    .end local v13           #address:Ljava/lang/String;
    .end local v18           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v19           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v21           #comments:[Ljava/lang/String;
    .end local v23           #connected:Z
    .end local v24           #device:I
    .end local v35           #state:I
    :cond_d
    const-string v2, "BEATS_NATIVE_NOTIFICATION"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "com.htc.intent.action.BEATS_NOTIFICATION"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5834
    :cond_e
    const-string v2, "NotificationOn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 5835
    .local v16, beats_on:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mEventAudioTrack:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9202(Landroid/media/AudioService;Z)Z

    .line 5837
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/service/WirelessDisplayManager;

    .line 5838
    .local v36, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    const-string v2, "AudioService"

    const-string v3, "Receive BEATS_NATIVE_NOTIFICATION from Native AudioTrack!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    if-eqz v36, :cond_f

    .line 5840
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMirrorDisplayStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getMirrorDisplayStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mGlobalSoundEffect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v4}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v36 .. v36}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5842
    const-string v2, "AudioService"

    const-string v3, "WirelessDisplay mirror mode!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5846
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5847
    :cond_10
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v16, :cond_11

    .line 5849
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mEventAudioTrack:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9202(Landroid/media/AudioService;Z)Z

    .line 5851
    :cond_11
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beats_on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mEventAudioTrack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mEventAudioTrack:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5852
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v16

    #setter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$8402(Landroid/media/AudioService;Z)Z

    .line 5853
    if-eqz v16, :cond_14

    .line 5854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v4, 0x0

    if-eqz v16, :cond_12

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    :goto_9
    const/4 v7, 0x0

    const/16 v8, 0x1f4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    :cond_12
    const/4 v5, 0x0

    goto :goto_8

    :cond_13
    const/4 v6, 0x0

    goto :goto_9

    .line 5858
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x65

    const/4 v4, 0x0

    if-eqz v16, :cond_15

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    :goto_b
    const/4 v7, 0x0

    const/16 v8, 0x3e8

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    :cond_16
    const/4 v6, 0x0

    goto :goto_b

    .line 5864
    .end local v16           #beats_on:Z
    .end local v36           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_17
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5866
    :cond_18
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 5867
    .restart local v35       #state:I
    const-string v2, "card"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 5868
    .local v14, alsaCard:I
    const-string v2, "device"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 5869
    .local v15, alsaDevice:I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_19

    const/4 v2, -0x1

    if-ne v15, v2, :cond_19

    const-string v32, ""

    .line 5871
    .local v32, params:Ljava/lang/String;
    :goto_c
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v24, 0x2000

    .line 5873
    .restart local v24       #device:I
    :goto_d
    const-string v3, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    :goto_e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", card: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5877
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_1c

    const/4 v2, 0x1

    :goto_f
    move/from16 v0, v24

    move-object/from16 v1, v32

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;ZILjava/lang/String;)Z

    goto/16 :goto_1

    .line 5869
    .end local v24           #device:I
    .end local v32           #params:Ljava/lang/String;
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto :goto_c

    .line 5871
    .restart local v32       #params:Ljava/lang/String;
    :cond_1a
    const/16 v24, 0x4000

    goto :goto_d

    .line 5873
    .restart local v24       #device:I
    :cond_1b
    const-string v2, "ACTION_USB_AUDIO_DEVICE_PLUG"

    goto :goto_e

    .line 5877
    :cond_1c
    const/4 v2, 0x0

    goto :goto_f

    .line 5878
    .end local v14           #alsaCard:I
    .end local v15           #alsaDevice:I
    .end local v24           #device:I
    .end local v32           #params:Ljava/lang/String;
    .end local v35           #state:I
    :cond_1d
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5879
    const/16 v17, 0x0

    .line 5880
    .local v17, broadcast:Z
    const/16 v34, -0x1

    .line 5881
    .local v34, scoAudioState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 5882
    :try_start_2
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 5884
    .local v20, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1f

    .line 5888
    :cond_1e
    const/16 v17, 0x1

    .line 5890
    :cond_1f
    packed-switch v20, :pswitch_data_1

    .line 5912
    :cond_20
    :goto_10
    const/16 v17, 0x0

    .line 5915
    :cond_21
    :goto_11
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5916
    if-eqz v17, :cond_0

    .line 5917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v34

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    .line 5920
    new-instance v30, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5921
    .local v30, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5922
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5892
    .end local v30           #newIntent:Landroid/content/Intent;
    :pswitch_4
    const/16 v34, 0x1

    .line 5893
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_21

    .line 5896
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    goto :goto_11

    .line 5915
    .end local v20           #btState:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 5900
    .restart local v20       #btState:I
    :pswitch_5
    const/16 v34, 0x0

    .line 5901
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 5902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_11

    .line 5905
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_20

    .line 5908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_10

    .line 5924
    .end local v17           #broadcast:Z
    .end local v20           #btState:I
    .end local v34           #scoAudioState:I
    :cond_22
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5925
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;Z)Z

    .line 5926
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5929
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Landroid/media/AudioService;->access$9502(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 5931
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5932
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v2}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)V

    .line 5933
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Z

    .line 5937
    const-string v2, "AudioService"

    const-string v3, "mBootCompleted !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Z)Z

    .line 5940
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getGlobalEffectDB()I
    invoke-static {v3}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;)I

    move-result v3

    #setter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;I)I

    .line 5941
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mBeatsState:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Z)Z

    .line 5942
    const-string v2, "global_effect=none"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5963
    new-instance v30, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5964
    .restart local v30       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5966
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5968
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 5969
    .local v10, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v10, :cond_0

    .line 5970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v10, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_1

    .line 5973
    .end local v10           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v30           #newIntent:Landroid/content/Intent;
    :cond_23
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 5974
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5976
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v31

    .line 5977
    .local v31, packageName:Ljava/lang/String;
    if-eqz v31, :cond_0

    .line 5978
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v31

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5981
    .end local v31           #packageName:Ljava/lang/String;
    :cond_24
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5982
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5983
    :cond_25
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5984
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5985
    :cond_26
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5986
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetVolumePanel()V
    invoke-static {v2}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)V

    .line 5987
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5990
    :cond_27
    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 5991
    const-string/jumbo v2, "mirror_display_status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 5992
    .local v26, inMirror:Z
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got MIRROR_DISPLAY_STATE_CHANGED_ACTION, inMirror = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMirrorMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5994
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    #calls: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;I)I

    move-result v24

    .line 5995
    .restart local v24       #device:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/service/WirelessDisplayManager;

    .line 5996
    .restart local v36       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v36, :cond_2c

    .line 5997
    invoke-virtual/range {v36 .. v36}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    .line 5998
    const-string v2, "AudioService"

    const-string v3, "Enable MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5999
    const/4 v2, 0x3

    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 6000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 6001
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/media/AudioService$HtcVolumeProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioService$HtcVolumeProfile;->apply()V

    .line 6003
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    .line 6019
    :goto_12
    if-eqz v26, :cond_2d

    .line 6020
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Z)Z

    .line 6021
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;I)Z

    move-result v27

    .line 6022
    .local v27, isChanged:Z
    if-eqz v27, :cond_0

    .line 6023
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10300(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6005
    .end local v27           #isChanged:Z
    :cond_29
    invoke-virtual/range {v36 .. v36}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10200(Landroid/media/AudioService;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 6006
    const-string v2, "AudioService"

    const-string v3, "Leaving MirrorMode and RestoreStreamVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6007
    const/4 v2, 0x3

    const/4 v3, 0x0

    move/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 6008
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 6009
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mProfileNowUsing:Landroid/media/AudioService$HtcVolumeProfile;
    invoke-static {v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/media/AudioService$HtcVolumeProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioService$HtcVolumeProfile;->apply()V

    .line 6011
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    goto :goto_12

    .line 6014
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    goto :goto_12

    .line 6016
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorMode:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10202(Landroid/media/AudioService;Z)Z

    goto :goto_12

    .line 6026
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mMirrorDisplayStatus:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;Z)Z

    .line 6027
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mGlobalSoundEffect:I
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)I

    move-result v3

    #calls: Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;I)Z

    move-result v27

    .line 6028
    .restart local v27       #isChanged:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAppPlay:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 6029
    if-eqz v27, :cond_0

    .line 6030
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const-string v3, "WirelessDisplay mirror mode state changed"

    #calls: Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10300(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6033
    .end local v24           #device:I
    .end local v26           #inMirror:Z
    .end local v27           #isChanged:Z
    .end local v36           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_2e
    const-string v2, "DONGLE_MEDIA_PLAYING"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "com.htc.intent.action.DONGLE_MEDIA_PLAY"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 6034
    :cond_2f
    const-string v2, "AudioService"

    const-string v3, "Broadcast Receiver: DONGLE_MEDIA_PLAYING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6035
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mDongleMediaOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10402(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 6036
    :cond_30
    const-string v2, "DONGLE_MEDIA_STOP"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "com.htc.intent.action.DONGLE_MEDIA_STOP"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 6037
    :cond_31
    const-string v2, "AudioService"

    const-string v3, "Broadcast Receiver: DONGLE_MEDIA_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mDongleMediaOn:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10402(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 6039
    :cond_32
    const-string v2, "com.htc.intent.action.FM"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 6040
    const-string v2, "AudioService"

    const-string v3, "FM Intent received"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    const/16 v33, -0x1

    .line 6043
    .local v33, path:I
    const/16 v29, 0x0

    .line 6044
    .local v29, isFmOn:I
    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 6045
    const-string/jumbo v2, "path"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 6046
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(isFmOn, path) = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_3a

    .line 6049
    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_36

    .line 6050
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6058
    :cond_33
    :goto_13
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_34

    .line 6059
    const v2, 0x8000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6061
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const v4, 0x8000

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6065
    :cond_34
    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_38

    .line 6066
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6074
    :cond_35
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10602(Landroid/media/AudioService;Z)Z

    .line 6075
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->broadcastFMVolume(Z)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Z)V

    goto/16 :goto_1

    .line 6051
    :cond_36
    if-nez v33, :cond_33

    .line 6052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->hasHeadsetConnected()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10500(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 6053
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_13

    .line 6055
    :cond_37
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_13

    .line 6067
    :cond_38
    if-nez v33, :cond_35

    .line 6068
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->hasHeadsetConnected()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10500(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 6069
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_14

    .line 6071
    :cond_39
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_14

    .line 6076
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->hasHeadsetConnected()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$10500(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 6078
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6082
    :goto_15
    const v2, 0x8000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6084
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6085
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mFMActive:Z
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$10602(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 6080
    :cond_3b
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_15

    .line 6088
    .end local v29           #isFmOn:I
    .end local v33           #path:I
    :cond_3c
    const-string v2, "com.htc.intent.action.FMTX"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6089
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 6090
    .restart local v35       #state:I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM Tx Intent received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6091
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    .line 6092
    .local v28, isConnected:Z
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_3d

    if-nez v28, :cond_3d

    .line 6093
    const/high16 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6096
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    const/high16 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6097
    :cond_3d
    if-nez v35, :cond_0

    if-eqz v28, :cond_0

    .line 6098
    const/high16 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6101
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 5731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5763
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 5890
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
