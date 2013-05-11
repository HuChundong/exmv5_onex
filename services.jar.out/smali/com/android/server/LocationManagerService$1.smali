.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2399
    .local v3, action:Ljava/lang/String;
    const-string v23, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 2400
    .local v16, queryRestart:Z
    if-nez v16, :cond_0

    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 2404
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2405
    const/16 v20, 0x0

    .line 2406
    .local v20, uidList:[I
    :try_start_0
    const-string v23, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 2407
    const-string v23, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v20

    .line 2411
    :goto_0
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 2412
    :cond_1
    monitor-exit v24

    .line 2500
    .end local v20           #uidList:[I
    :cond_2
    :goto_1
    return-void

    .line 2409
    .restart local v20       #uidList:[I
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-string v25, "android.intent.extra.UID"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    aput v25, v21, v23

    .end local v20           #uidList:[I
    .local v21, uidList:[I
    move-object/from16 v20, v21

    .end local v21           #uidList:[I
    .restart local v20       #uidList:[I
    goto :goto_0

    .line 2414
    :cond_4
    move-object/from16 v4, v20

    .local v4, arr$:[I
    array-length v13, v4

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_10

    aget v19, v4, v10

    .line 2415
    .local v19, uid:I
    if-ltz v19, :cond_f

    .line 2416
    const/16 v18, 0x0

    .line 2417
    .local v18, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 2418
    .local v8, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v12, v23, -0x1

    .local v12, j:I
    :goto_3
    if-ltz v12, :cond_5

    .line 2419
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2420
    .local v22, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 2421
    if-eqz v16, :cond_6

    .line 2422
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2423
    monitor-exit v24

    goto :goto_1

    .line 2461
    .end local v4           #arr$:[I
    .end local v8           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #j:I
    .end local v13           #len$:I
    .end local v18           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v19           #uid:I
    .end local v22           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 2425
    .restart local v4       #arr$:[I
    .restart local v8       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #j:I
    .restart local v13       #len$:I
    .restart local v18       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v19       #uid:I
    .restart local v22       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-nez v18, :cond_7

    .line 2426
    :try_start_1
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    .restart local v18       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 2429
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 2434
    .end local v8           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v12           #j:I
    .end local v22           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    const/16 v17, 0x0

    .line 2435
    .local v17, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2436
    .local v7, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v0, v7, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2437
    if-eqz v16, :cond_b

    .line 2438
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2439
    monitor-exit v24

    goto/16 :goto_1

    .line 2441
    :cond_b
    if-nez v17, :cond_c

    .line 2442
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2444
    .restart local v17       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 2445
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2449
    .end local v7           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_d
    if-eqz v18, :cond_e

    .line 2450
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v7, v23, -0x1

    .local v7, i:I
    :goto_5
    if-ltz v7, :cond_e

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2450
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 2454
    .end local v7           #i:I
    :cond_e
    if-eqz v17, :cond_f

    .line 2455
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v7, v23, -0x1

    .restart local v7       #i:I
    :goto_6
    if-ltz v7, :cond_f

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 2455
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 2414
    .end local v7           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v17           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v18           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_f
    add-int/lit8 v9, v10, 0x1

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_2

    .line 2461
    .end local v19           #uid:I
    :cond_10
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2462
    .end local v4           #arr$:[I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v20           #uidList:[I
    :cond_11
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 2463
    const-string v23, "noConnectivity"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 2465
    .local v14, noConnectivity:Z
    if-nez v14, :cond_13

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    .line 2471
    :goto_7
    const-string v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2473
    .local v5, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 2474
    .local v11, info:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_15

    .line 2475
    const-string v23, "LocationManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ConnectivityChange for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2478
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v7, v23, -0x1

    .restart local v7       #i:I
    :goto_8
    if-ltz v7, :cond_14

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationProviderInterface;

    .line 2480
    .local v15, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v15}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v15, v0, v11}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2478
    :cond_12
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 2468
    .end local v5           #connManager:Landroid/net/ConnectivityManager;
    .end local v7           #i:I
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v15           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v23 .. v24}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    goto/16 :goto_7

    .line 2484
    .restart local v5       #connManager:Landroid/net/ConnectivityManager;
    .restart local v7       #i:I
    .restart local v11       #info:Landroid/net/NetworkInfo;
    :cond_14
    :try_start_3
    monitor-exit v24

    goto/16 :goto_1

    .end local v7           #i:I
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23

    .line 2486
    :cond_15
    const-string v23, "LocationManagerService"

    const-string v24, "Active NetworkInfo = null"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2490
    .end local v5           #connManager:Landroid/net/ConnectivityManager;
    .end local v11           #info:Landroid/net/NetworkInfo;
    .end local v14           #noConnectivity:Z
    :cond_16
    const-string v23, "android.location.GPS_FIX_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2492
    :try_start_4
    const-string v15, "gps"

    .line 2493
    .local v15, provider:Ljava/lang/String;
    const-string v23, "enabled"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2494
    .local v6, enabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z
    invoke-static {v0, v15}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_17

    invoke-static {}, Lcom/android/server/LocationManagerService;->access$2000()Z

    move-result v23

    if-eqz v23, :cond_18

    .line 2495
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/LocationManagerService;->handleStatusChangedLocked(Ljava/lang/String;Z)V
    invoke-static {v0, v15, v6}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    .line 2497
    :cond_18
    monitor-exit v24

    goto/16 :goto_1

    .end local v6           #enabled:Z
    .end local v15           #provider:Ljava/lang/String;
    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v23
.end method
