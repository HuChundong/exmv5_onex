.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, action:Ljava/lang/String;
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 206
    .local v9, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v8, 0x0

    .line 208
    .local v8, delayResume:Z
    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 209
    const-string v18, "android.bluetooth.adapter.extra.STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 211
    .local v16, state:I
    packed-switch v16, :pswitch_data_0

    .line 330
    .end local v16           #state:I
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v16       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 222
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 225
    .end local v16           #state:I
    :cond_1
    const-string v18, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 226
    const-string v18, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 228
    .local v6, bondState:I
    packed-switch v6, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 245
    :pswitch_3
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Bond_none"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 230
    :pswitch_4
    const/16 v14, 0x64

    .line 231
    .local v14, priority:I
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 232
    .local v3, BtClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v18

    const/16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 234
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Remote device matches connectable priority"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v14, 0x0

    .line 241
    :cond_2
    :goto_1
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Set priority"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v14}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 239
    :cond_3
    const-string v18, "BluetoothA2dpService"

    const-string v19, "**** Failed to retrieve BtClass in bonded state ****"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v3           #BtClass:Landroid/bluetooth/BluetoothClass;
    .end local v6           #bondState:I
    .end local v14           #priority:I
    :cond_4
    const-string v18, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 253
    .restart local v16       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 255
    .end local v16           #state:I
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 256
    :cond_6
    const-string v18, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 257
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 258
    .local v17, streamType:I
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 261
    .local v15, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 262
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, address:Ljava/lang/String;
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 265
    .local v11, newVolLevel:I
    const-string v18, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 267
    .local v12, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, path:Ljava/lang/String;
    if-le v11, v12, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 270
    :cond_7
    if-ge v11, v12, :cond_0

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v13}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 275
    .end local v5           #address:Ljava/lang/String;
    .end local v11           #newVolLevel:I
    .end local v12           #oldVolLevel:I
    .end local v13           #path:Ljava/lang/String;
    .end local v15           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v17           #streamType:I
    :cond_8
    const-string v18, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "android.intent.action.PHONE_STATE_EXT"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 276
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 277
    .restart local v15       #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_b

    .line 278
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 280
    .local v7, conndevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v7, :cond_b

    .line 281
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->delayResumeDevices:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 282
    const-string v18, "BluetoothA2dpService"

    const-string v19, "[A2DP]ACTION_PHONE_STATE_CHANGED entered in for"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->delayResumeDevices:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 284
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Delay a2dp resume is set to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v8, 0x1

    .line 289
    :cond_a
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->delayResumeFamiliarDevices:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    .line 290
    const-string v18, "BluetoothA2dpService"

    const-string v19, "[A2DP]ACTION_PHONE_STATE_CHANGED entered in for familiar device"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->delayResumeFamiliarDevices:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 292
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Delay a2dp resume is set to true for familiar device"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v8, 0x1

    .line 300
    .end local v7           #conndevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #i:I
    :cond_b
    const-string/jumbo v18, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 301
    .local v16, state:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[A2DP]ACTION_PHONE_STATE_CHANGED state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1100(Ljava/lang/String;)V

    .line 302
    const-string v18, "OFFHOOK"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 303
    const-string v18, "BluetoothA2dpService"

    const-string v19, "[MYDEBUG]SystemProperties.set bluetooth.call_active 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 281
    .end local v16           #state:Ljava/lang/String;
    .restart local v7       #conndevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v10       #i:I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 289
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 305
    .end local v7           #conndevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #i:I
    .restart local v16       #state:Ljava/lang/String;
    :cond_e
    const-string v18, "IDLE"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 306
    const-string v18, "BluetoothA2dpService"

    const-string v19, "[A2DP]SystemProperties.set bluetooth.call_active 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v8, :cond_f

    .line 308
    const/4 v8, 0x0

    .line 309
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Delaying a2dp resume after call end"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x9c4

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 312
    :cond_f
    const-string v18, "BluetoothA2dpService"

    const-string/jumbo v19, "no delay in a2dp resume"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 316
    .end local v15           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16           #state:Ljava/lang/String;
    :cond_10
    const-string v18, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 318
    const-string/jumbo v18, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 319
    .restart local v16       #state:Ljava/lang/String;
    const-string v18, "BluetoothA2dpService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "setAvrcpPassThrough ACTION_PHONE_STATE_CHANGED state:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v18, "RINGING"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "OFFHOOK"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 321
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    const-string v18, "BluetoothA2dpService"

    const-string/jumbo v19, "setAvrcpPassThrough - disable AVRCP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->setAvrcpPassThrough(Z)V

    goto/16 :goto_0

    .line 324
    :cond_12
    const-string v18, "IDLE"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 325
    const-string v18, "BluetoothA2dpService"

    const-string/jumbo v19, "setAvrcpPassThrough dealy counter start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0xfa0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 228
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
