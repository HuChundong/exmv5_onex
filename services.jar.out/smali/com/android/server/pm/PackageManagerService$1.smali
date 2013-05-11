.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->preParsing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 478
    .local v28, startTime:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v12

    .line 479
    .local v12, CPUcores:I
    const-string v3, "debug.prefetchthread"

    invoke-static {v3, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 480
    .local v7, threads:I
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 481
    .local v8, sysAppDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, sysAppList:[Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v6, v9

    .line 483
    .local v6, SIZE:I
    :goto_0
    if-gtz v6, :cond_0

    .line 484
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 485
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system app list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 488
    .local v27, separateProcesses:Ljava/lang/String;
    const/4 v13, 0x0

    .line 490
    .local v13, _mDefParseFlags:I
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 491
    const-string v3, "*"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 492
    const/16 v13, 0x8

    .line 493
    const/4 v10, 0x0

    .line 494
    .local v10, _mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 495
    const-string v3, "PackageManager"

    const-string v4, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    :goto_1
    or-int/lit8 v11, v13, 0x41

    .line 510
    .local v11, parseFlags:I
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    .line 511
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Pre Parse Dir:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v33, ", threads:"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 513
    const/4 v3, 0x1

    if-le v7, v3, :cond_6

    .line 514
    const/16 v16, 0x1

    .line 516
    .local v16, index:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v7, :cond_6

    .line 517
    move/from16 v5, v16

    .line 519
    .local v5, tindex:I
    new-instance v26, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 551
    .local v26, secondary:Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparse_thread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    const/16 v3, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 553
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    .line 554
    add-int/lit8 v16, v16, 0x1

    .line 555
    goto :goto_2

    .line 482
    .end local v5           #tindex:I
    .end local v6           #SIZE:I
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    .end local v11           #parseFlags:I
    .end local v13           #_mDefParseFlags:I
    .end local v16           #index:I
    .end local v26           #secondary:Ljava/lang/Thread;
    .end local v27           #separateProcesses:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 497
    .restart local v6       #SIZE:I
    .restart local v13       #_mDefParseFlags:I
    .restart local v27       #separateProcesses:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    .line 498
    const-string v3, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 499
    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 500
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Running with debug.separate_processes: "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 504
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 505
    const/4 v10, 0x0

    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    goto/16 :goto_1

    .line 559
    .restart local v11       #parseFlags:I
    :cond_6
    const/16 v25, 0x0

    .line 562
    .local v25, scanPath:Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 563
    .local v30, sysFrameDir:Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v31

    .line 564
    .local v31, sysFrameList:[Ljava/lang/String;
    if-eqz v31, :cond_8

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    .line 565
    .local v32, sysFrame_SIZE:I
    :goto_3
    const/4 v15, 0x0

    .line 566
    .local v15, i:I
    if-lez v32, :cond_d

    .line 567
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v32

    if-ge v15, v0, :cond_a

    .line 568
    aget-object v3, v31, v15

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 567
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 564
    .end local v15           #i:I
    .end local v32           #sysFrame_SIZE:I
    :cond_8
    const/16 v32, 0x0

    goto :goto_3

    .line 572
    .restart local v15       #i:I
    .restart local v32       #sysFrame_SIZE:I
    :cond_9
    :try_start_0
    new-instance v24, Ljava/io/File;

    aget-object v3, v31, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    .local v24, scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 574
    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 575
    .local v19, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 576
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 579
    .local v18, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_c

    .line 580
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 581
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 585
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_0
    move-exception v14

    .line 586
    .local v14, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 587
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v14           #e:Ljava/lang/Exception;
    :cond_a
    :goto_6
    const/4 v15, 0x0

    .line 598
    add-int/lit8 v15, v7, -0x1

    :goto_7
    if-ge v15, v6, :cond_f

    .line 600
    :try_start_1
    new-instance v24, Ljava/io/File;

    aget-object v3, v9, v15

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    .restart local v24       #scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 602
    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 604
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 607
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_e

    .line 608
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_b

    .line 609
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    :cond_b
    :goto_8
    add-int/2addr v15, v7

    goto :goto_7

    .line 584
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 592
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :cond_d
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_a

    .line 593
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system framework list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 612
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    .restart local v24       #scanFile:Ljava/io/File;
    :cond_e
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 613
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_1
    move-exception v14

    .line 614
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 615
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "preload"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v20, preloadAPDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v21

    .line 623
    .local v21, preloadAPList:[Ljava/lang/String;
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .line 624
    .local v22, preloadAP_SIZE:I
    :goto_9
    if-lez v22, :cond_14

    .line 625
    const/4 v15, 0x0

    .line 626
    or-int/lit16 v0, v13, 0x180

    move/from16 v17, v0

    .line 629
    .local v17, parseFlags_preload:I
    const/4 v15, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    .line 631
    :try_start_4
    new-instance v24, Ljava/io/File;

    aget-object v3, v21, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 632
    .restart local v24       #scanFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 633
    new-instance v19, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 634
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 635
    const/4 v3, 0x0

    or-int/lit8 v4, v17, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 638
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v18, :cond_12

    .line 639
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_10

    .line 640
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to parsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_10
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 623
    .end local v17           #parseFlags_preload:I
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v22           #preloadAP_SIZE:I
    .end local v24           #scanFile:Ljava/io/File;
    :cond_11
    const/16 v22, 0x0

    goto :goto_9

    .line 643
    .restart local v17       #parseFlags_preload:I
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v19       #pp:Landroid/content/pm/PackageParser;
    .restart local v22       #preloadAP_SIZE:I
    .restart local v24       #scanFile:Ljava/io/File;
    :cond_12
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .line 644
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v19           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #scanFile:Ljava/io/File;
    :catch_2
    move-exception v14

    .line 645
    .restart local v14       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 646
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    .end local v14           #e:Ljava/lang/Exception;
    .end local v17           #parseFlags_preload:I
    :cond_13
    :goto_c
    return-void

    .line 651
    :cond_14
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_15

    .line 652
    const-string v3, "PackageManager"

    const-string v4, "preParse data/preload folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_15
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 657
    const/16 v23, 0x64

    .line 658
    .local v23, retry:I
    :goto_d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_17

    if-lez v23, :cond_17

    .line 659
    rem-int/lit8 v3, v23, 0x4

    if-nez v3, :cond_16

    .line 660
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_16

    .line 661
    const-string v3, "PackageManager"

    const-string v4, "Waiting preparse thread finish 50ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_16
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 672
    :cond_17
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_13

    .line 673
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "preParsing package time: "

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    sub-long v33, v33, v28

    move-wide/from16 v0, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 666
    :cond_18
    const-wide/16 v3, 0x32

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 667
    add-int/lit8 v23, v23, -0x1

    goto :goto_d

    .line 668
    :catch_3
    move-exception v14

    .line 669
    .restart local v14       #e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
