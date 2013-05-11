.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1313
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1314
    return-void
.end method

.method private getAlarmTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1454
    packed-switch p1, :pswitch_data_0

    .line 1464
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1456
    :pswitch_0
    const-string v0, "ELAPSED_REALTIME"

    goto :goto_0

    .line 1458
    :pswitch_1
    const-string v0, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_0

    .line 1460
    :pswitch_2
    const-string v0, "RTC"

    goto :goto_0

    .line 1462
    :pswitch_3
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1320
    :goto_0
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1322
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1328
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)I

    move-result v4

    #calls: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;I)I

    move-result v20

    .line 1329
    .local v20, result:I
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1330
    and-int/lit8 v3, v20, 0x1

    if-eqz v3, :cond_1

    .line 1331
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$400()[J

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1334
    :cond_1
    and-int/lit8 v3, v20, 0x2

    if-eqz v3, :cond_2

    .line 1335
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$400()[J

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1338
    :cond_2
    and-int/lit8 v3, v20, 0x4

    if-eqz v3, :cond_3

    .line 1339
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$400()[J

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1342
    :cond_3
    and-int/lit8 v3, v20, 0x8

    if-eqz v3, :cond_4

    .line 1343
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$400()[J

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1347
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v21, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v3, 0x1

    and-int v3, v3, v20

    if-eqz v3, :cond_5

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1352
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v14, intent:Landroid/content/Intent;
    const/high16 v3, 0x2800

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1358
    .end local v14           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 1359
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1360
    .local v18, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1365
    .local v16, nowELAPSED:J
    and-int/lit8 v3, v20, 0x1

    if-eqz v3, :cond_6

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1368
    :cond_6
    and-int/lit8 v3, v20, 0x2

    if-eqz v3, :cond_7

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1371
    :cond_7
    and-int/lit8 v3, v20, 0x4

    if-eqz v3, :cond_8

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1374
    :cond_8
    and-int/lit8 v3, v20, 0x8

    if-eqz v3, :cond_9

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1378
    :cond_9
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRXTXGrupSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v21

    #calls: Lcom/android/server/AlarmManagerService;->CheckWhetherRXTXTrigger(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    invoke-static {v3, v0, v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1380
    const-string v3, "AlarmManager"

    const-string v4, "RXTXtriggerAlarmsLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    add-long v5, v5, v18

    move-object/from16 v0, v21

    #calls: Lcom/android/server/AlarmManagerService;->RXTXtriggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1385
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1386
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_b
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1387
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    .local v10, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_2
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.ALARM_COUNT"

    iget v8, v10, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    if-nez v3, :cond_c

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1400
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/LinkedList;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2008(Lcom/android/server/AlarmManagerService;)I

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v11

    .line 1404
    .local v11, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_11

    .line 1405
    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1409
    :goto_2
    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_e

    .line 1411
    :cond_d
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1412
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1420
    :cond_e
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1421
    .local v13, i:Landroid/content/Intent;
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1425
    .local v9, action:Ljava/lang/String;
    :goto_3
    if-eqz v9, :cond_f

    const-string v3, "@"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1426
    const-string v9, "encrypted_name"

    .line 1430
    :cond_f
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending alarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService$AlarmThread;->getAlarmTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeateInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1437
    .end local v9           #action:Ljava/lang/String;
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #i:Landroid/content/Intent;
    :catch_1
    move-exception v12

    .line 1438
    .local v12, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel sending alarm."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    :cond_10
    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1449
    .end local v10           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #nowELAPSED:J
    .end local v18           #nowRTC:J
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1407
    .restart local v10       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v11       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v16       #nowELAPSED:J
    .restart local v18       #nowRTC:J
    :cond_11
    :try_start_4
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1445
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_2
    move-exception v12

    .line 1446
    .local v12, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v3, "AlarmManager"

    const-string v4, "Failure sending alarm."

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1421
    .end local v12           #e:Ljava/lang/RuntimeException;
    .restart local v11       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13       #i:Landroid/content/Intent;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1449
    .end local v10           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #i:Landroid/content/Intent;
    :cond_13
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
