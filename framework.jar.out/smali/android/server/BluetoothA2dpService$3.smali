.class Landroid/server/BluetoothA2dpService$3;
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
    .line 343
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, action:Ljava/lang/String;
    const-string v17, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 349
    const-string v17, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 350
    .local v16, streamType:I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v14

    .line 353
    .local v14, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 354
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, address:Ljava/lang/String;
    const-string v17, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 357
    .local v8, newVolLevel:I
    const-string v17, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 359
    .local v9, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, path:Ljava/lang/String;
    if-le v8, v9, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v12}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    .line 391
    .end local v5           #address:Ljava/lang/String;
    .end local v8           #newVolLevel:I
    .end local v9           #oldVolLevel:I
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local v5       #address:Ljava/lang/String;
    .restart local v8       #newVolLevel:I
    .restart local v9       #oldVolLevel:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v14       #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v16       #streamType:I
    :cond_1
    if-ge v8, v9, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v12}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto :goto_0

    .line 367
    .end local v5           #address:Ljava/lang/String;
    .end local v8           #newVolLevel:I
    .end local v9           #oldVolLevel:I
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16           #streamType:I
    :cond_2
    const-string v17, "com.android.music.playstatechanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "com.htc.music.playstatechanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 369
    :cond_3
    const-string/jumbo v17, "playstate"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 370
    .local v15, status:Ljava/lang/String;
    if-nez v15, :cond_4

    .line 371
    const-string/jumbo v17, "playstate"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 372
    .local v13, playstate:Z
    if-eqz v13, :cond_5

    const-string/jumbo v15, "playing"

    .line 374
    .end local v13           #playstate:Z
    :cond_4
    :goto_1
    const-string/jumbo v17, "position"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 375
    .local v6, elapsed:J
    const-string v17, "BluetoothA2dpService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MEDIA_PLAYBACK_CHANGED status: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " elapsed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Landroid/server/BluetoothA2dpService;->generateMediaIntentMap(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpSetMediaPlaybackStatusNative(Ljava/lang/String;J)Z
    invoke-static {v0, v15, v6, v7}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;J)Z

    goto/16 :goto_0

    .line 372
    .end local v6           #elapsed:J
    .restart local v13       #playstate:Z
    :cond_5
    const-string/jumbo v15, "paused"

    goto :goto_1

    .line 378
    .end local v13           #playstate:Z
    .end local v15           #status:Ljava/lang/String;
    :cond_6
    const-string v17, "com.android.music.metachanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "com.htc.music.metachanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 380
    :cond_7
    const-string v17, "BluetoothA2dpService"

    const-string v18, "MEDIA_CHANGED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Landroid/server/BluetoothA2dpService;->generateMediaIntentMap(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Landroid/server/BluetoothA2dpService;->parseMetadata(Landroid/content/Intent;)[Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, parsedMetadata:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpSetMediaNative([Ljava/lang/Object;)Z
    invoke-static {v0, v10}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 384
    .end local v10           #parsedMetadata:[Ljava/lang/String;
    :cond_8
    const-string v17, "com.android.music.settingchanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "com.htc.music.settingchanged"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 386
    :cond_9
    const-string v17, "BluetoothA2dpService"

    const-string v18, "SETTING_CHANGED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Landroid/server/BluetoothA2dpService;->generateMediaIntentMap(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    #calls: Landroid/server/BluetoothA2dpService;->parsePlayerSettings(Landroid/content/Intent;)[Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, parsedSettings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$3;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Landroid/server/BluetoothA2dpService;->avrcpSetMediaPlayerPropertyNative([Ljava/lang/Object;)Z
    invoke-static {v0, v11}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
