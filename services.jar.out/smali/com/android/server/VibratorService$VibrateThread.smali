.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 466
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 467
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 468
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 469
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 472
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 487
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 483
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 485
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 478
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 490
    const/4 v15, -0x8

    invoke-static {v15}, Landroid/os/Process;->setThreadPriority(I)V

    .line 491
    monitor-enter p0

    .line 492
    const/4 v7, 0x0

    .line 493
    .local v7, index:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v15}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v11

    .line 494
    .local v11, pattern:[J
    array-length v9, v11

    .line 495
    .local v9, len:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v15}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v13

    .line 496
    .local v13, repeat:I
    const-wide/16 v2, 0x0

    .line 498
    .local v2, duration:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPid:I
    invoke-static {v15}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v12

    .line 499
    .local v12, pid:I
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 500
    new-instance v14, Ljava/lang/StringBuilder;

    array-length v15, v11

    mul-int/lit8 v15, v15, 0x7

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v14, sb:Ljava/lang/StringBuilder;
    move-object v1, v11

    .local v1, arr$:[J
    array-length v10, v1

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v10, :cond_0

    aget-wide v4, v1, v6

    .line 502
    .local v4, i:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 504
    .end local v4           #i:J
    :cond_0
    const-string v15, "VibratorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "vib dbg, vibrate, pid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", repeat: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", length: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", pattern: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #arr$:[J
    .end local v6           #i$:I
    .end local v10           #len$:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_1
    move v8, v7

    .line 508
    .end local v7           #index:I
    .local v8, index:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v15, :cond_8

    .line 510
    if-ge v8, v9, :cond_2

    .line 511
    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    :try_start_2
    aget-wide v15, v11, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v2, v15

    move v8, v7

    .line 515
    .end local v7           #index:I
    .restart local v8       #index:I
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 516
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v15, :cond_5

    move v7, v8

    .line 536
    .end local v8           #index:I
    .restart local v7       #index:I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 537
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 538
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v16

    monitor-enter v16

    .line 539
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v15, v15, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_3

    .line 540
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 542
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v15, :cond_4

    .line 545
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v15}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v15, v0}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v15}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 549
    :cond_4
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 550
    return-void

    .line 520
    .end local v7           #index:I
    .restart local v8       #index:I
    :cond_5
    if-ge v8, v9, :cond_6

    .line 523
    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    :try_start_6
    aget-wide v2, v11, v8

    .line 524
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-lez v15, :cond_1

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(J)V
    invoke-static {v15, v2, v3}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;J)V

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto/16 :goto_1

    .line 528
    :cond_6
    if-gez v13, :cond_7

    move v7, v8

    .line 529
    .end local v8           #index:I
    .restart local v7       #index:I
    goto :goto_2

    .line 531
    .end local v7           #index:I
    .restart local v8       #index:I
    :cond_7
    move v7, v13

    .line 532
    .end local v8           #index:I
    .restart local v7       #index:I
    const-wide/16 v2, 0x0

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto/16 :goto_1

    .line 537
    .end local v2           #duration:J
    .end local v8           #index:I
    .end local v9           #len:I
    .end local v11           #pattern:[J
    .end local v12           #pid:I
    .end local v13           #repeat:I
    .restart local v7       #index:I
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 549
    .restart local v2       #duration:J
    .restart local v9       #len:I
    .restart local v11       #pattern:[J
    .restart local v12       #pid:I
    .restart local v13       #repeat:I
    :catchall_1
    move-exception v15

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v15

    .line 537
    .end local v7           #index:I
    .restart local v8       #index:I
    :catchall_2
    move-exception v15

    move v7, v8

    .end local v8           #index:I
    .restart local v7       #index:I
    goto :goto_3

    .end local v7           #index:I
    .restart local v8       #index:I
    :cond_8
    move v7, v8

    .end local v8           #index:I
    .restart local v7       #index:I
    goto/16 :goto_2
.end method
